#!/bin/bash

PROJECT_TOP_DIR=$(pwd)
PROJECT_FINAL_OUT_DIR=${PROJECT_TOP_DIR}/out/final
ARCH=arm

#toolchain
TOOCHAIN_PREFIX=${PROJECT_TOP_DIR}/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-

##########################################################################################
#	UBOOT
##########################################################################################

UBOOT_CFG=rv1106_defconfig
UBOOT_DIR=${PROJECT_TOP_DIR}/uboot/u-boot
UBOOT_OUT_DIR=${PROJECT_TOP_DIR}/out/uboot
UBOOT_CONFIGS_FOLDER=${PROJECT_TOP_DIR}/configs/uboot_configs
UBOOT_DTS_FOLDER=${PROJECT_TOP_DIR}/configs/uboot_dts
UBOOT_MAKE_SCRIPT=${PROJECT_TOP_DIR}/uboot/u-boot/make.sh

#rk_bin is tool to package the image with Rockchip miniloader
RK_BIN=${PROJECT_TOP_DIR}/uboot/rkbin

function build_uboot() {
      echo "============ Start building uboot ============"
      cd ${UBOOT_DIR}

      # Prepare by linking config and dts file to modify or use
	echo "Linking uboot DTS to ${UBOOT_DTS_FOLDER}"
      for file in ${UBOOT_DIR}/arch/arm/dts/*rv1106*; do
            cp -f ${file} ${UBOOT_DTS_FOLDER}/ > /dev/null 2>&1
            ln -sf ${file} ${UBOOT_DTS_FOLDER}/$(basename ${file}) > /dev/null 2>&1
      done
      echo "Linking uboot DTS to ${UBOOT_DTS_FOLDER} done!!!"

      echo "Linking uboot configs to ${UBOOT_CONFIGS_FOLDER}"
      for file in ${UBOOT_DIR}/configs/*rv1106*; do
            cp -f ${file} ${UBOOT_CONFIGS_FOLDER}/ > /dev/null 2>&1
            ln -sf ${file} ${UBOOT_CONFIGS_FOLDER}/$(basename ${file}) >/dev/null 2>&1
      done
      echo "Linking uboot configs to ${UBOOT_CONFIGS_FOLDER} done!!!"

      make distclean
      make ${UBOOT_CFG}
      # ARCH=arm CROSS_COMPILE=arm-rockchip830-linux-uclibcgnueabihf- make
      ./make.sh CROSS_COMPILE=${TOOCHAIN_PREFIX}

      #Test and copy compiled uboot.img
      test ! -f ${PROJECT_TOP_DIR}/uboot/u-boot/uboot.img || cp -fv ${PROJECT_TOP_DIR}/uboot/u-boot/uboot.img ${PROJECT_TOP_DIR}/out/uboot
      #Copy idblock.img
      cp -f ${PROJECT_TOP_DIR}/uboot/u-boot/*idblock*.img ${PROJECT_TOP_DIR}/out/uboot/idblock.img
      #Copy download.bin
      cp -f ${PROJECT_TOP_DIR}/uboot/u-boot/*download*.bin ${PROJECT_TOP_DIR}/out/uboot/download.bin
}
function clean_uboot(){
      echo "============ Start cleaning uboot ============"
      cd ${UBOOT_CONFIGS_FOLDER} && rm -rf *
      cd ${UBOOT_DTS_FOLDER} && rm -rf *
      cd ${UBOOT_DIR}
      make distclean
      cd ${UBOOT_OUT_DIR}
      rm -rf *
}


##########################################################################################
#	KERNEL
##########################################################################################
KERNEL_DIR=${PROJECT_TOP_DIR}/kernel
KERNEL_OUT_DIR=${PROJECT_TOP_DIR}/out/kernel
KERNEL_CONFIGS_FOLDER=${PROJECT_TOP_DIR}/configs/kernel_configs
KERNEL_DTS_FOLDER=${PROJECT_TOP_DIR}/configs/kernel_dts
KERNEL_DTS=rv1106g-luckfox-pico-max
KERNEL_CFG=luckfox_rv1106_linux_defconfig
KERNEL_CFG_PATH=${KERNEL_CONFIGS_FOLDER}/${KERNEL_CFG}
function build_kernel(){
      echo "============ Start building kernel ============"
      echo "TARGET_ARCH          = $ARCH"
	echo "TARGET_KERNEL_CONFIG = $KERNEL_CFG"
	echo "TARGET_KERNEL_DTS    = ${KERNEL_DTS}.dts"
	echo "==============================================="
      cd ${KERNEL_DIR}

      # Prepare by linking config and dts file to modify or use
	echo "Linking kernel DTS to ${KERNEL_DTS_FOLDER}"
      for file in ${KERNEL_DIR}/arch/arm/boot/dts/*rv1106*; do
            cp -f ${file} ${KERNEL_DTS_FOLDER}/ > /dev/null 2>&1
            ln -rsf ${file} ${KERNEL_DTS_FOLDER}/$(basename ${file}) > /dev/null 2>&1
      done
      echo "Linking kernel DTS to ${KERNEL_DTS_FOLDER} done!!!"

      echo "Linking kernel configs to ${KERNEL_CONFIGS_FOLDER}"
      for file in ${KERNEL_DIR}/arch/arm/configs/*rv1106*; do
            cp -f ${file} ${KERNEL_CONFIGS_FOLDER}/ > /dev/null 2>&1
            ln -rfs ${file} ${KERNEL_CONFIGS_FOLDER}/$(basename ${file}) > /dev/null 2>&1
      done
      echo "Linking kernel configs to ${KERNEL_CONFIGS_FOLDER} done!!!"


      # Config
      make ${KERNEL_CFG} ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX}

      # Build kernel
      cpu_num=$(grep 'processor' /proc/cpuinfo | sort -u | wc -l)
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} -j${cpu_num}
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} ${KERNEL_DTS}.img -j${cpu_num} 

      # Build kernel module .ko

      # After steps above, output folder will generate:
      # + DTBs in  KERNEL_DIR/arch/arm/boot/dts ,that is KERNEL_DTS.dtb
      # + Kernel image in  KERNEL_DIR/arch/arm/boot/ , and we choose zImage
      # Copy them
      cp ${KERNEL_DIR}/arch/arm/boot/zImage ${KERNEL_OUT_DIR}/
      cp ${KERNEL_DIR}/boot.img ${KERNEL_OUT_DIR}/

      
}
function clean_kernel(){
      echo "============ Start cleaning kernel ============"
      cd ${KERNEL_CONFIGS_FOLDER} && rm -rf *
      cd ${KERNEL_DTS_FOLDER} && rm -rf *
      cd ${KERNEL_DIR}
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} mrproper
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} distclean
      cd ${KERNEL_OUT_DIR}
      rm -rf -d *
}








if [ "${1}" = "uboot" ]; then
      export PATH=$(echo "$PATH" | tr -d ' \t\n')
      build_uboot
fi
if [ "$1" = "clean_uboot" ]; then
	clean_uboot
fi
if [ "$1" = "kernel" ]; then
      build_kernel
fi
if [ "$1" = "clean_kernel" ]; then
      clean_kernel
fi
if [ "$1" = "clean" ]; then
      clean_uboot
	clean_kernel
fi