FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

require inc/xt_shared_env.inc

RENESAS_BSP_URL = "git://github.com/xen-troops/linux.git"

BRANCH = "master"
SRCREV = "c25044845f2c3678f5df789881e7a125556af6fc"
LINUX_VERSION = "4.14.75"
SRC_URI_append = " \
    file://defconfig \
"

SRC_URI_append_rcar = " \
    file://xen-chosen.dtsi;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

DEPLOYDIR="${XT_DIR_ABS_SHARED_BOOT_DOMD}"

##############################################################################
# Salvator-X H3 ES3.0 4x2G
###############################################################################
SRC_URI_append_salvator-x-h3-4x2g-xt = " \
    file://r8a7795-salvator-x-4x2g-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-doma.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-x-h3-4x2g-xt = " \
    renesas/r8a7795-salvator-x-4x2g-dom0.dtb \
    renesas/r8a7795-salvator-x-4x2g-domd.dtb \
    renesas/r8a7795-salvator-x-4x2g-doma.dtb \
    renesas/r8a7795-salvator-x-4x2g-domu.dtb \
"

##############################################################################
# Salvator-X H3 ES2.0
###############################################################################
# N.B. Device trees for ES 2.0 are based on and use device trees
# for Salvator-X H3 ES3.0 4x2G: Dom0 has memory and GSX adjustments
# and DomD and DomA and DomU are used as is.
###############################################################################
SRC_URI_append_salvator-x-h3-xt = " \
    file://r8a7795-salvator-x-4x2g-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-doma.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-x-h3-xt = " \
    renesas/r8a7795-salvator-x-dom0.dtb \
    renesas/r8a7795-salvator-x-4x2g-domd.dtb \
    renesas/r8a7795-salvator-x-4x2g-doma.dtb \
    renesas/r8a7795-salvator-x-4x2g-domu.dtb \
"

##############################################################################
# Salvator-XS H3 ES3.0 4x2GB
###############################################################################
SRC_URI_append_salvator-xs-h3-4x2g-xt = " \
    file://r8a7795-salvator-xs-4x2g-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-xs-4x2g-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-xs-h3-4x2g-xt = " \
    renesas/r8a7795-salvator-xs-4x2g-dom0.dtb \
    renesas/r8a7795-salvator-xs-4x2g-domd.dtb \
    renesas/r8a7795-salvator-x-4x2g-domu.dtb \
"

##############################################################################
# Salvator-XS H3 ES3.0 2x2GB
###############################################################################
# N.B. Device trees for ES 3.0 2x2G are based on and use device trees
# for Salvator-XS H3 ES3.0 4x2G: Dom0 has memory and GSX adjustments
# and DomD and DomU are used as is.
###############################################################################
SRC_URI_append_salvator-xs-h3-2x2g-xt = " \
    file://r8a7795-salvator-xs-4x2g-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-xs-4x2g-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-xs-2x2g-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-xs-h3-2x2g-xt = " \
    renesas/r8a7795-salvator-xs-4x2g-dom0.dtb \
    renesas/r8a7795-salvator-xs-4x2g-domd.dtb \
    renesas/r8a7795-salvator-x-4x2g-domu.dtb \
    renesas/r8a7795-salvator-xs-2x2g-dom0.dtb \
"

##############################################################################
# Salvator-XS H3 ES2.0
###############################################################################
# N.B. Device trees for ES 2.0 are based on and use device trees
# for Salvator-XS H3 ES3.0 4x2G: Dom0 has memory and GSX adjustments
# and DomD and DomU are used as is.
###############################################################################
SRC_URI_append_salvator-xs-h3-xt = " \
    file://r8a7795-salvator-xs-4x2g-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-xs-4x2g-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-xs-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-xs-h3-xt = " \
    renesas/r8a7795-salvator-xs-4x2g-dom0.dtb \
    renesas/r8a7795-salvator-xs-4x2g-domd.dtb \
    renesas/r8a7795-salvator-x-4x2g-domu.dtb \
    renesas/r8a7795-salvator-xs-dom0.dtb \
"

##############################################################################
# Salvator-X M3
###############################################################################
# N.B. DomA device tree is reused from Salvator-X H3 ES3.0 4x2G
###############################################################################
SRC_URI_append_salvator-x-m3-xt = " \
    file://r8a7796-salvator-x-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7796-salvator-x-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-salvator-x-4x2g-doma.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7796-salvator-x-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-x-m3-xt = " \
    renesas/r8a7796-salvator-x-dom0.dtb \
    renesas/r8a7796-salvator-x-domd.dtb \
    renesas/r8a7795-salvator-x-4x2g-doma.dtb \
    renesas/r8a7796-salvator-x-domu.dtb \
"

##############################################################################
# M3ULCB
###############################################################################
SRC_URI_append_m3ulcb-xt = " \
    file://r8a7796-m3ulcb-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7796-m3ulcb-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7796-m3ulcb-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_m3ulcb-xt = " \
    renesas/r8a7796-m3ulcb-dom0.dtb \
    renesas/r8a7796-m3ulcb-domd.dtb \
    renesas/r8a7796-m3ulcb-domu.dtb \
"

##############################################################################
# H3ULCB
###############################################################################
SRC_URI_append_h3ulcb-xt = " \
    file://r8a7795-h3ulcb-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-h3ulcb-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a7795-h3ulcb-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_h3ulcb-xt = " \
    renesas/r8a7795-h3ulcb-dom0.dtb \
    renesas/r8a7795-h3ulcb-domd.dtb \
    renesas/r8a7795-h3ulcb-domu.dtb \
"

##############################################################################
# Salvator-XS M3N
###############################################################################
SRC_URI_append_salvator-xs-m3n-xt = " \
    file://r8a77965-salvator-xs-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a77965-salvator-xs-domd.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a77965-salvator-xs-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"

KERNEL_DEVICETREE_salvator-xs-m3n-xt = " \
    renesas/r8a77965-salvator-xs-dom0.dtb \
    renesas/r8a77965-salvator-xs-domd.dtb \
    renesas/r8a77965-salvator-xs-domu.dtb \
"

do_deploy_append() {
    for DTB in ${KERNEL_DEVICETREE}
        do
              DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
              DTB_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
              DTB_SYMLINK_NAME=`echo ${DTB_NAME##*-}`
              if [ -z "${KERNEL_IMAGETYPES}" ] ; then
                  ln -sfr ${DEPLOYDIR}/${DTB_NAME}.dtb ${DEPLOYDIR}/${DTB_SYMLINK_NAME}.dtb
              else
                  for type in ${KERNEL_IMAGETYPES} ; do
                      ln -sfr ${DEPLOYDIR}/${type}-${DTB_NAME}.dtb ${DEPLOYDIR}/${DTB_SYMLINK_NAME}.dtb
                      # FIXME: we can take any image type to create this symlink, so take the first one
                      break
                  done
              fi
        done

    find ${D}/boot -iname "vmlinux*" -exec tar -cJvf ${STAGING_KERNEL_BUILDDIR}/vmlinux.tar.xz {} \;
}

