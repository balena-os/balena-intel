FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://config \
    file://grub.cfg_external \
    file://grub.cfg_internal-dev \
    file://grub.cfg_internal-prod \
    "

inherit deploy

DEPENDS_class-target = "grub-native coreutils-native"
RDEPENDS_${PN}_class-native = ""

MBR_IMAGE = "boot.img"
GRUB_IMAGE = "core.img"
GRUB_TARGET = "i386-pc"

GRUB_BUILDIN ?= "biosdisk part_msdos fat search linux"

do_deploy() {
    mkdir -p ${DEPLOYDIR}/grub/${GRUB_TARGET}
    install -m 644 ${D}/${libdir}/grub/${GRUB_TARGET}/boot.img ${DEPLOYDIR}/grub
    install -m 644 ${WORKDIR}/grub.cfg_external ${DEPLOYDIR}

    grub-mkimage -c ../config -p /grub -d ./grub-core/ -O ${GRUB_TARGET} \
                 -o ${DEPLOYDIR}/grub/${GRUB_IMAGE} ${GRUB_BUILDIN}

    if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
        install -m 644 ${WORKDIR}/grub.cfg_internal-dev ${DEPLOYDIR}/grub.cfg_internal
    else
        install -m 644 ${WORKDIR}/grub.cfg_internal-prod ${DEPLOYDIR}/grub.cfg_internal
    fi
    
    mkdir -p ${DEPLOYDIR}/grub/${GRUB_TARGET}
    cp -r ${D}/${libdir}/grub/${GRUB_TARGET}/*.mod ${DEPLOYDIR}/grub/${GRUB_TARGET}

    truncate -s 446 ${DEPLOYDIR}/grub/${MBR_IMAGE}
}

do_deploy_class-native() {
    :
}

BBCLASSEXTEND = "native"

addtask do_deploy before do_package after do_install
