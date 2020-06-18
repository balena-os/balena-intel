SUMMARY = "GRUB2 is the next-generation GRand Unified Bootloader"

DESCRIPTION = "GRUB2 is the next generaion of a GPLed bootloader \
intended to unify bootloading across x86 operating systems. In \
addition to loading the Linux kernel, it implements the Multiboot \
standard, which allows for flexible loading of multiple boot images."

HOMEPAGE = "http://www.gnu.org/software/grub/"
SECTION = "bootloaders"

LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"

SRC_URI = "${GNU_MIRROR}/grub/grub-${PV}.tar.gz \
           file://0001-Disable-mfpmath-sse-as-well-when-SSE-is-disabled.patch \
           file://autogen.sh-exclude-pc.patch \
           file://grub-module-explicitly-keeps-symbole-.module_license.patch \
           file://0001-grub.d-10_linux.in-add-oe-s-kernel-name.patch \
"
SRC_URI[md5sum] = "5ce674ca6b2612d8939b9e6abed32934"
SRC_URI[sha256sum] = "f10c85ae3e204dbaec39ae22fa3c5e99f0665417e91c2cb49b7e5031658ba6ea"

DEPENDS = "flex-native bison-native gettext-native"

COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|aarch64.*)-(linux.*|freebsd.*)'
COMPATIBLE_HOST_armv7a = 'null'
COMPATIBLE_HOST_armv7ve = 'null'

# configure.ac has code to set this automagically from the target tuple
# but the OE freeform one (core2-foo-bar-linux) don't work with that.

GRUBPLATFORM_arm = "efi"
GRUBPLATFORM_aarch64 = "efi"
GRUBPLATFORM ??= "pc"

inherit autotools gettext texinfo pkgconfig

EXTRA_OECONF = "--with-platform=${GRUBPLATFORM} \
                --disable-grub-mkfont \
                --program-prefix="" \
                --enable-liblzma=no \
                --enable-libzfs=no \
                --enable-largefile \
                --disable-werror \
"

PACKAGECONFIG ??= ""
PACKAGECONFIG[grub-mount] = "--enable-grub-mount,--disable-grub-mount,fuse"
PACKAGECONFIG[device-mapper] = "--enable-device-mapper,--disable-device-mapper,libdevmapper"

# grub2 creates its own set of -nostdinc / -isystem / -ffreestanding CFLAGS and
# OE's default BUILD_CFLAGS (assigned to CFLAGS for native builds) etc, conflict
# with that. Note that since BUILD_CFLAGS etc are not used by grub2 target
# builds, it's safe to clear them unconditionally for both target and native.
BUILD_CPPFLAGS = ""
BUILD_CFLAGS = ""
BUILD_CXXFLAGS = ""
BUILD_LDFLAGS = ""

export PYTHON = "python3"

do_configure_prepend() {
	cd ${S}
	FROM_BOOTSTRAP=1 ${S}/autogen.sh
	cd ${B}
}

do_sign_class-target() {
    if [ "x${SIGN_API}" = "x" ]; then
        return 0
    fi
    SIGN_GRUB_KEY_ID="66EDD781D72CE409CDE823392244F835254BB920"

    # Get public key for mkimage
    RESPONSE_FILE=$(mktemp)
    PUBKEY_FILE="${B}/pubkey.gpg"
    /usr/bin/curl --fail "${SIGN_API}/gpg/key/${SIGN_GRUB_KEY_ID}" > "${RESPONSE_FILE}"
    /usr/bin/jq -r ".key" < "${RESPONSE_FILE}" | gpg --dearmor > "${PUBKEY_FILE}"
    rm -f "${RESPONSE_FILE}"

    # Sign grub modules
    TO_SIGN=$(mktemp)
    find "${B}/grub-core/" -name "*.mod" -type f > "${TO_SIGN}"

    for FILE_TO_SIGN in $(cat "${TO_SIGN}")
    do
        REQUEST_FILE=$(mktemp)
        RESPONSE_FILE=$(mktemp)
        echo "{\"key_id\": \"${SIGN_GRUB_KEY_ID}\", \"payload\": \"$(/usr/bin/base64 -w 0 ${FILE_TO_SIGN})\"}" > "${REQUEST_FILE}"
        /usr/bin/curl --fail "${SIGN_API}/gpg/sign" -X POST -H "Content-Type: application/json" -d "@${REQUEST_FILE}" > "${RESPONSE_FILE}"
        /usr/bin/jq -r .signature < "${RESPONSE_FILE}" | /usr/bin/base64 -d > "${FILE_TO_SIGN}.sig"
        rm -f "${REQUEST_FILE}" "${RESPONSE_FILE}"
    done

    rm -f "${TO_SIGN}"
}

do_sign() {
    :
}

RDEPENDS_${PN}_class-native = ""

BBCLASSEXTEND = "native"

addtask sign before do_install after do_compile
