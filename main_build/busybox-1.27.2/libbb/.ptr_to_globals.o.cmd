cmd_libbb/ptr_to_globals.o := /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc -Wp,-MD,libbb/.ptr_to_globals.o.d  -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.27.2)" -DBB_BT=AUTOCONF_TIMESTAMP -march=armv7-a -mfpu=neon -mfloat-abi=hard -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os    -D"KBUILD_STR(s)=#s" -D"KBUILD_BASENAME=KBUILD_STR(ptr_to_globals)"  -D"KBUILD_MODNAME=KBUILD_STR(ptr_to_globals)" -c -o libbb/ptr_to_globals.o libbb/ptr_to_globals.c

deps_libbb/ptr_to_globals.o := \
  libbb/ptr_to_globals.c \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/features.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_config.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/cdefs.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/errno-base.h \

libbb/ptr_to_globals.o: $(deps_libbb/ptr_to_globals.o)

$(deps_libbb/ptr_to_globals.o):
