KBRANCH ?= "v5.8/standard/base"

require recipes-kernel/linux/linux-yocto.inc

# board specific branches
KBRANCH:qemuarm  ?= "v5.8/standard/arm-versatile-926ejs"
KBRANCH:qemuarm64 ?= "v5.8/standard/qemuarm64"
KBRANCH:qemumips ?= "v5.8/standard/mti-malta32"
KBRANCH:qemuppc  ?= "v5.8/standard/qemuppc"
KBRANCH:qemuriscv64  ?= "v5.8/standard/base"
KBRANCH:qemux86  ?= "v5.8/standard/base"
KBRANCH:qemux86-64 ?= "v5.8/standard/base"
KBRANCH:qemumips64 ?= "v5.8/standard/mti-malta64"

SRCREV_machine:qemuarm ?= "41542e01d0deb5a38c190809f4fd01a442769938"
SRCREV_machine:qemuarm64 ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
SRCREV_machine:qemumips ?= "36e642d5b6c5b1d05f6172a75df172ad8fefc30b"
SRCREV_machine:qemuppc ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
SRCREV_machine:qemuriscv64 ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
SRCREV_machine:qemux86 ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
SRCREV_machine:qemux86-64 ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
SRCREV_machine:qemumips64 ?= "5538a54afd2525803729c85a40609cae292cb242"
SRCREV_machine ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
SRCREV_meta ?= "34775c20bc4f4ac32ac7eded79f9dc8ca77e4277"

# remap qemuarm to qemuarma15 for the 5.8 kernel
# KMACHINE:qemuarm ?= "qemuarma15"

SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;name=machine;branch=${KBRANCH}; \
           git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-5.8;destsuffix=${KMETA}"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"
LINUX_VERSION ?= "5.8.13"

DEPENDS += "${@bb.utils.contains('ARCH', 'x86', 'elfutils-native', '', d)}"
DEPENDS += "openssl-native util-linux-native"
DEPENDS += "gmp-native"

PV = "${LINUX_VERSION}+git${SRCPV}"

KMETA = "kernel-meta"
KCONF_BSP_AUDIT_LEVEL = "1"

KERNEL_DEVICETREE:qemuarmv5 = "versatile-pb.dtb"

COMPATIBLE_MACHINE = "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|qemuriscv64"

# Functionality flags
KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc"
KERNEL_FEATURES:append = " ${KERNEL_EXTRA_FEATURES}"
KERNEL_FEATURES:append:qemuall=" cfg/virtio.scc features/drm-bochs/drm-bochs.scc"
KERNEL_FEATURES:append:qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
KERNEL_FEATURES:append:qemux86-64=" cfg/sound.scc cfg/paravirt_kvm.scc"
KERNEL_FEATURES:append = " ${@bb.utils.contains("TUNE_FEATURES", "mx32", " cfg/x32.scc", "", d)}"
KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "ptest", " features/scsi/scsi-debug.scc", "", d)}"
