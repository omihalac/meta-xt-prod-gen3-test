SUMMARY = "Xen suspend coordinator"
HOMEPAGE = "https://github.com/lorc/xensuspend"
LICENSE = "GPLv2"

SRCREV = "master"
SRC_URI = "\
	  git://github.com/xen-troops/xensuspend.git;protocol=https \
	  file://xensuspend \
	  "
LIC_FILES_CHKSUM = "file://LICENSE;md5=e8c1458438ead3c34974bc0be3a03ed6"

S = "${WORKDIR}/git"

INITSCRIPT_NAME = "xensuspend"
INITSCRIPT_PARAMS = "defaults 83"

inherit setuptools3 update-rc.d

RDEPENDS_${PN} = "\
	       pyxs \
	       xen-xl \
	       xen-xenstat \
	       xen-xenstore \
	       python3-argparse \
	       python3-ctypes \
	       python3-shell \
	       python3-lockfile\
	       python3-daemon \
	       "

do_install_append() {
	install -d ${D}${sysconfdir}/init.d
	install -m 0755 ${WORKDIR}/${PN} ${D}${sysconfdir}/init.d/
}