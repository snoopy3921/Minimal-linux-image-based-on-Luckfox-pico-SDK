cmd_libbb/getopt32.o := /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc -Wp,-MD,libbb/.getopt32.o.d  -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.27.2)" -DBB_BT=AUTOCONF_TIMESTAMP -march=armv7-a -mfpu=neon -mfloat-abi=hard -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os    -D"KBUILD_STR(s)=#s" -D"KBUILD_BASENAME=KBUILD_STR(getopt32)"  -D"KBUILD_MODNAME=KBUILD_STR(getopt32)" -c -o libbb/getopt32.o libbb/getopt32.c

deps_libbb/getopt32.o := \
  libbb/getopt32.c \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/.h) \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/getopt.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/getopt.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/features.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_config.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/cdefs.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/verbose.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/test1.h) \
    $(wildcard include/config/test2.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/killall5.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/feature/securetty.h) \
    $(wildcard include/config/pam.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include-fixed/limits.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include-fixed/syslimits.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/limits.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/posix1_lim.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/local_lim.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/limits.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_local_lim.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/posix2_lim.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/xopen_lim.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/stdio_lim.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/byteswap.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/byteswap.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/byteswap-common.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/types.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/wordsize.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/typesizes.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/byteswap-16.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/endian.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/endian.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include/stdint.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/stdint.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/wchar.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include/stdbool.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/unistd.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/posix_opt.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_posix_opt.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/environments.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include/stddef.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/confname.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/ctype.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_touplow.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/dirent.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/dirent.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/errno.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/errno-base.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/fcntl.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/fcntl.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/types.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/time.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/select.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/select.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/sigset.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/time.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/sysmacros.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/pthreadtypes.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uio.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/stat.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/stat.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/inttypes.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/netdb.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/netinet/in.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/socket.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/uio.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/socket.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/socket_type.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/sockaddr.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/socket.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/socket.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/posix_types.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/stddef.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/posix_types.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/posix_types.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/bitsperlong.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/sockios.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/sockios.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/in.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/siginfo.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/netdb.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/setjmp.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/setjmp.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/signal.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/signum.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/sigaction.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/sigcontext.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/sigcontext.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/sigstack.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/ucontext.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/procfs.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/time.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/user.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/sigthread.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/paths.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/stdio.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_stdio.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/wchar.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include/stdarg.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/stdlib.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/waitflags.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/waitstatus.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/alloca.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/string.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/libgen.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/poll.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/poll.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/poll.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/ioctl.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/ioctls.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/ioctls.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/ioctls.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/ioctl.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/ioctl.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/ioctl.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/ioctl-types.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/ttydefaults.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/mman.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/mman.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/mman-linux.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/mman-shared.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/wait.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/termios.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/termios.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/uClibc_clk_tck.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/param.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/linux/param.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm/param.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/asm-generic/param.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/pwd.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/grp.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/mntent.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/sys/statfs.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/statfs.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/utmpx.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/bits/utmpx.h \
  /home/giahuy/workspace/Embedded_Linux/luckfox_cam/main_build/toolchain/arm-rockchip830-linux-uclibcgnueabihf/arm-rockchip830-linux-uclibcgnueabihf/sysroot/usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \

libbb/getopt32.o: $(deps_libbb/getopt32.o)

$(deps_libbb/getopt32.o):
