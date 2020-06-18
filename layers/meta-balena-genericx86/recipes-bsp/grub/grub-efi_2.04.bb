require grub2.inc

require conf/image-uefi.conf

GRUBPLATFORM = "efi"

DEPENDS_append_class-target = " grub-efi-native"
RDEPENDS_${PN}_class-target = "grub-common virtual/grub-bootconf"

SRC_URI += " \
           file://cfg \
          "

S = "${WORKDIR}/grub-${PV}"

# Determine the target arch for the grub modules
python __anonymous () {
    import re
    target = d.getVar('TARGET_ARCH')
    prefix = "" if d.getVar('EFI_PROVIDER') == "grub-efi" else "grub-efi-"
    if target == "x86_64":
        grubtarget = 'x86_64'
    elif re.match('i.86', target):
        grubtarget = 'i386'
    elif re.match('aarch64', target):
        grubtarget = 'arm64'
    elif re.match('arm', target):
        grubtarget = 'arm'
    else:
        raise bb.parse.SkipRecipe("grub-efi is incompatible with target %s" % target)
    grubimage = prefix + d.getVar("EFI_BOOT_IMAGE")
    d.setVar("GRUB_TARGET", grubtarget)
    d.setVar("GRUB_IMAGE", grubimage)
    prefix = "grub-efi-" if prefix == "" else ""
    d.setVar("GRUB_IMAGE_PREFIX", prefix)
}

inherit deploy

CACHED_CONFIGUREVARS += "ac_cv_path_HELP2MAN="
EXTRA_OECONF += "--enable-efiemu=no"
GRUB_BUILDIN ?= "boot linux ext2 fat serial part_msdos part_gpt normal \
                 efi_gop iso9660 configfile search loadenv test"
GRUB_BUILDIN += " gcry_sha512 gcry_rsa"

do_mkimage() {
	cd ${B}

	if [ "x${SIGN_API}" = "x" ]; then
		GRUB_PUBKEY_ARG="--pubkey "${B}/pubkey.gpg""
	fi

	# Search for the grub.cfg on the local boot media by using the
	# built in cfg file provided via this recipe
	grub-mkimage -c ../cfg -p ${EFIDIR} -d ./grub-core/ \
	               -O ${GRUB_TARGET}-efi -o ./${GRUB_IMAGE_PREFIX}${GRUB_IMAGE} \
	               ${GRUB_BUILDIN} ${GRUB_PUBKEY_ARG}
}

addtask mkimage before do_install after do_sign

do_mkimage_class-native() {
	:
}

do_install_append_class-target() {
	install -d ${D}${EFI_FILES_PATH}
	install -m 644 ${B}/${GRUB_IMAGE_PREFIX}${GRUB_IMAGE} ${D}${EFI_FILES_PATH}/${GRUB_IMAGE}
	find "${B}" -name "*.mod.sig" -exec install -m 0644 {} "${D}/${libdir}/grub/${GRUB_TARGET}-efi/" \;
}

do_install_class-native() {
	install -d ${D}${bindir}
	install -m 755 grub-mkimage ${D}${bindir}
	install -m 755 grub-editenv ${D}${bindir}
}

do_install_class-target() {
    oe_runmake 'DESTDIR=${D}' -C grub-core install

    # Remove build host references...
    find "${D}" -name modinfo.sh -type f -exec \
        sed -i \
        -e 's,--sysroot=${STAGING_DIR_TARGET},,g' \
        -e 's|${DEBUG_PREFIX_MAP}||g' \
        -e 's:${RECIPE_SYSROOT_NATIVE}::g' \
        {} +
}

do_install_append_aarch64() {
    rm -rf  ${D}/${prefix}/
}

do_deploy() {
	install -m 644 ${B}/${GRUB_IMAGE_PREFIX}${GRUB_IMAGE} ${DEPLOYDIR}
}

do_deploy_class-native() {
	:
}

addtask deploy after do_install before do_build

do_sign_efi() {
	if [ "x${SIGN_API}" = "x" ]; then
		return 0
	fi
	SIGN_EFI_KEY_ID="balenaos"

	EFI_APP="${B}/${GRUB_IMAGE_PREFIX}${GRUB_IMAGE}"
	REQUEST_FILE=$(mktemp)
	RESPONSE_FILE=$(mktemp)
	echo "{\"key_id\": \"${SIGN_EFI_KEY_ID}\", \"payload\": \"$(/usr/bin/base64 -w 0 ${EFI_APP})\"}" > "${REQUEST_FILE}"
	/usr/bin/curl --fail "${SIGN_API}/secureboot/sign" -X POST -H "Content-Type: application/json" -d "@${REQUEST_FILE}" > "${RESPONSE_FILE}"
	/usr/bin/jq -r .signed < "${RESPONSE_FILE}" | /usr/bin/base64 -d > "${EFI_APP}.signed"
	rm -f "${REQUEST_FILE}" "${RESPONSE_FILE}"

	mv "${EFI_APP}.signed" "${EFI_APP}"
}

do_sign_efi_class-native() {
	:
}

addtask sign_efi after do_mkimage before do_install

FILES_${PN} = "${libdir}/grub/${GRUB_TARGET}-efi \
               ${datadir}/grub \
               ${EFI_FILES_PATH}/${GRUB_IMAGE} \
               "

FILES_${PN}_remove_aarch64 = "${libdir}/grub/${GRUB_TARGET}-efi"

# 64-bit binaries are expected for the bootloader with an x32 userland
INSANE_SKIP_${PN}_append_linux-gnux32 = " arch"
INSANE_SKIP_${PN}-dbg_append_linux-gnux32 = " arch"
INSANE_SKIP_${PN}_append_linux-muslx32 = " arch"
INSANE_SKIP_${PN}-dbg_append_linux-muslx32 = " arch"
