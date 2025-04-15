#!/bin/bash

PROJECT_TOP_DIR=$(pwd)
UBOOT_CFG=rv1106_defconfig
UBOOT_DIR=${PROJECT_TOP_DIR}/uboot/u-boot
UBOOT_OUT_DIR=${PROJECT_TOP_DIR}/out/uboot
UBOOT_MAKE_SCRIPT=${PROJECT_TOP_DIR}/uboot/u-boot/make.sh

#rk_bin is tool to package the image with Rockchip miniloader
RK_BIN=${PROJECT_TOP_DIR}/uboot/rkbin

#toolchain
TOOCHAIN_PREFIX=${PROJECT_TOP_DIR}/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-

function build_uboot() {
      echo "============ Start building uboot ============"
      cd ${UBOOT_DIR}
      make distclean
      make ${UBOOT_CFG}
      # ARCH=arm CROSS_COMPILE=arm-rockchip830-linux-uclibcgnueabihf- make
      ./make.sh CROSS_COMPILE=${TOOCHAIN_PREFIX}

      #Test and copy compiled uboot.img
      test ! -f ${PROJECT_TOP_DIR}/uboot/u-boot/uboot.img || cp -fv ${PROJECT_TOP_DIR}/uboot/u-boot/uboot.img ${PROJECT_TOP_DIR}/out/uboot
      #Copy idblock.img
      cp -fv ${PROJECT_TOP_DIR}/uboot/u-boot/*idblock*.img ${PROJECT_TOP_DIR}/out/uboot/idblock.img
      #Copy download.bin
      cp -fv ${PROJECT_TOP_DIR}/uboot/u-boot/*download*.bin ${PROJECT_TOP_DIR}/out/uboot/download.bin
}
function clean_uboot(){
      echo "============ Start cleaning uboot ============"
      cd ${UBOOT_DIR}
      make distclean
      cd ${UBOOT_OUT_DIR}
      rm -rf *
}
if [ "${1}" = "uboot" ]; then
      build_uboot
fi
if [ "$1" = "clean_uboot" ]; then
	clean_uboot
fi