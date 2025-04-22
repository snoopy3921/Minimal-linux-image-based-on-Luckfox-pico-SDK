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
UBOOT_CFG_PARTITION="32K(env),512K@32K(idblock),256K(uboot),32M(boot),6G(rootfs)"
UBOOT_ENV_PART_SIZE=$(${PROJECT_TOP_DIR}/tools/pc/toolkits/get_part_info.sh \
				 PART_SIZE ${UBOOT_CFG_PARTITION} env)
UBOOT_DIR=${PROJECT_TOP_DIR}/uboot/u-boot
UBOOT_OUT_DIR=${PROJECT_TOP_DIR}/out/uboot
UBOOT_CONFIGS_FOLDER=${PROJECT_TOP_DIR}/configs/uboot_configs
UBOOT_ENV_CFG_FILE=${UBOOT_CONFIGS_FOLDER}/.env.txt
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

      # Make env.img
      touch ${UBOOT_ENV_CFG_FILE}
      echo "sys_bootargs=root=/dev/mmcblk1p5" > ${UBOOT_ENV_CFG_FILE}  
      echo "rootfstype=ext4" >> ${UBOOT_ENV_CFG_FILE}   
      echo "blkdevparts=mmcblk1:${UBOOT_CFG_PARTITION}" >> ${UBOOT_ENV_CFG_FILE}   
      ${PROJECT_TOP_DIR}/tools/pc/uboot_tools/mkenvimage -s ${UBOOT_ENV_PART_SIZE} -p 0x0 -o ${PROJECT_TOP_DIR}/out/uboot/env.img ${UBOOT_ENV_CFG_FILE}

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

##########################################################################################
#	ROOTFS with BUSYBOX
##########################################################################################
BUSYBOX_VER=busybox-1.27.2
BUSYBOX_DIR=${PROJECT_TOP_DIR}/${BUSYBOX_VER}
BUSYBOX_CONFIGS_FOLDER=${PROJECT_TOP_DIR}/configs/busybox_configs
ROOTFS_OUT_DIR=${PROJECT_TOP_DIR}/out/rootfs
ARCH_CROSS_CFLAGS="-march=armv7-a -mfpu=neon -mfloat-abi=hard"

ROOTFS_PART_SIZE=$(${PROJECT_TOP_DIR}/tools/pc/toolkits/get_part_info.sh \
				 PART_SIZE ${UBOOT_CFG_PARTITION} rootfs)
function rootfs_busybox(){
      echo "============ Start building rootfs ============"
      cd ${BUSYBOX_DIR}
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} mrproper
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} distclean
      # Copy busybox config from tools folder and link 
      cp -f ${PROJECT_TOP_DIR}/tools/board/busybox/config_normal ${BUSYBOX_DIR}/.config
      ln -rsf ${PROJECT_TOP_DIR}/tools/board/busybox/config_normal ${BUSYBOX_CONFIGS_FOLDER}/config_normal > /dev/null 2>&1
      
      # Compile Busybox
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX}
      # Building rootfs Busybox
      export CFLAGS=${ARCH_CROSS_CFLAGS}
      #rm -rf ${ROOTFS_OUT_DIR}/* 
      make CROSS_COMPILE=${TOOCHAIN_PREFIX} install CONFIG_PREFIX=./BUSYBOX_INSTALL
      
      # Copy rootfs to output folder
      # Copy init script(first script to be run)
      cp -f ${BUSYBOX_CONFIGS_FOLDER}/init ${BUSYBOX_DIR}/BUSYBOX_INSTALL 
      cd ${BUSYBOX_DIR}/BUSYBOX_INSTALL
      mkdir dev proc sys etc
      rm linuxrc
      chmod +x *

      tar -cf ${ROOTFS_OUT_DIR}/rootfs.tar ${BUSYBOX_DIR}/BUSYBOX_INSTALL 

      echo "============ Start building ext4 rootfs ============"
	cd ${PROJECT_TOP_DIR}/tools/pc/e2fsprogs/
      ./mkfs_ext4.sh ${BUSYBOX_DIR}/BUSYBOX_INSTALL ${ROOTFS_OUT_DIR}/rootfs.img ${ROOTFS_PART_SIZE}
}


##########################################################################################
#	ROOTFS with BUILDROOT
##########################################################################################
BUILDROOT_VER=buildroot-2023.02.6
BUILDROOT_DIR=${PROJECT_TOP_DIR}/${BUILDROOT_VER}
BUILDROOT_CONFIGS_FOLDER=${PROJECT_TOP_DIR}/configs/buildroot_roofs_configs
BUILDROOT_OUT_DIR=${PROJECT_TOP_DIR}/out/rootfs
ARCH_CROSS_CFLAGS="-march=armv7-a -mfpu=neon -mfloat-abi=hard"
BUILDROOT_CFG=luckfox_pico_defconfig
BUILDROOT_CFG_PATH=${BUILDROOT_CONFIGS_FOLDER}/${BUILDROOT_CFG}
function rootfs_buildroot(){
      echo "============ Start building rootfs ============"
      cd ${BUILDROOT_DIR}
      # Config
      cp ${BUILDROOT_CONFIGS_FOLDER}/luckfox_cam_defconfig ${BUILDROOT_DIR}/configs
      make luckfox_cam_defconfig
      # Build rootfs
      make 

      cp ${BUILDROOT_DIR}/output/images/rootfs.ext4 ${ROOTFS_OUT_DIR}/rootfs.img
}


function clean_rootfs(){
      echo "============ Start cleaning rootfs ============"
      cd ${BUSYBOX_DIR}
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} mrproper
      make ARCH=arm CROSS_COMPILE=${TOOCHAIN_PREFIX} distclean
      rm -rf ${BUSYBOX_DIR}/BUSYBOX_INSTALL 

      cd ${BUILDROOT_DIR}
      make distclean
      make clean
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
      clean_rootfs
fi
if [ "${1}" = "rootfs" ]; then
      export PATH=$(echo "$PATH" | tr -d ' \t\n')
      if [ "${2}" = "busybox" ]; then
            rootfs_busybox
      elif [ "${2}" = "buildroot" ]; then
            rootfs_buildroot
      fi
fi
if [ "$1" = "clean_rootfs" ]; then
      clean_rootfs
fi