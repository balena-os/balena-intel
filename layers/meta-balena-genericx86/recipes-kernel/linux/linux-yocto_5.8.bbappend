KBRANCH:genericx86  = "v5.8/standard/base"
KBRANCH:genericx86-64  = "v5.8/standard/base"
KBRANCH:edgerouter = "v5.8/standard/edgerouter"
KBRANCH:beaglebone-yocto = "v5.8/standard/beaglebone"

KMACHINE:genericx86 ?= "common-pc"
KMACHINE:genericx86-64 ?= "common-pc-64"
KMACHINE:beaglebone-yocto ?= "beaglebone"

# Switch to 5.8.18 base
SRCREV_machine:genericx86 ?= "ab435ce49bd1d02e33dfec24f76955dc1196970b"
SRCREV_machine:genericx86-64 ?= "ab435ce49bd1d02e33dfec24f76955dc1196970b"
SRCREV_machine:edgerouter ?= "912adf166eb0688e011154048f5fa0e5863249c3"
SRCREV_machine:beaglebone-yocto ?= "912adf166eb0688e011154048f5fa0e5863249c3"

COMPATIBLE_MACHINE:genericx86 = "genericx86"
COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
COMPATIBLE_MACHINE:edgerouter = "edgerouter"
COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"

LINUX_VERSION:genericx86 = "5.8.18"
LINUX_VERSION:genericx86-64 = "5.8.18"
LINUX_VERSION:edgerouter = "5.8.2"
LINUX_VERSION:beaglebone-yocto = "5.8.2"
