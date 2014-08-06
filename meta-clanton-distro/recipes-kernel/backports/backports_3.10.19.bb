DESCRIPTION = "Linux Kernel backports project"
SECTION = "kernel/modules"
LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
SRC_URI = "http://www.kernel.org/pub/linux/kernel/projects/backports/stable/v${PV}/backports-${PV}-1.tar.bz2 \
           file://Makefile.real \
	"

S = "${WORKDIR}/backports-${PV}-1"

inherit module

PR = "r0"

EXTRA_OEMAKE = "KLIB_BUILD=${STAGING_KERNEL_DIR}"

do_configure_append() {
	CC=gcc LD=ld AR=ar oe_runmake defconfig-iwlwifi
	cp ${WORKDIR}/Makefile.real ${S}/Makefile.real
}

SRC_URI[md5sum] = "8eecf002c3c766ff7f087551f3270f90"
SRC_URI[sha256sum] = "01c1827b475de4f93d3e2f67df49c1280a17ac42db0d9c9f4b3ffaed4ff1c94e"

