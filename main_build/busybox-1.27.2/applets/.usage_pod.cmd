cmd_applets/usage_pod := gcc -Wp,-MD,applets/.usage_pod.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer      -Iinclude -Iinclude -o applets/usage_pod applets/usage_pod.c  

deps_applets/usage_pod := \
  applets/usage_pod.c \
    $(wildcard include/config/nommu.h) \
  /usr/include/stdc-predef.h \
  /usr/include/unistd.h \
  /usr/include/features.h \
  /usr/include/features-time64.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/bits/timesize.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/long-double.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
  /usr/include/x86_64-linux-gnu/bits/environments.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/time64.h \
  /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h \
  /usr/include/x86_64-linux-gnu/bits/confname.h \
  /usr/include/x86_64-linux-gnu/bits/getopt_posix.h \
  /usr/include/x86_64-linux-gnu/bits/getopt_core.h \
  /usr/include/x86_64-linux-gnu/bits/unistd.h \
  /usr/include/x86_64-linux-gnu/bits/unistd-decl.h \
  /usr/include/x86_64-linux-gnu/bits/unistd_ext.h \
  /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/x86_64-linux-gnu/bits/libc-header-start.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-intn.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-least.h \
  /usr/include/stdlib.h \
  /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/bits/floatn.h \
  /usr/include/x86_64-linux-gnu/bits/floatn-common.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/bits/types/clock_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/time_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/timer_t.h \
  /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endianness.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/uintn-identity.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h \
  /usr/include/x86_64-linux-gnu/bits/select2.h \
  /usr/include/x86_64-linux-gnu/bits/select-decl.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h \
  /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h \
  /usr/include/x86_64-linux-gnu/bits/struct_mutex.h \
  /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h \
  /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib.h \
  /usr/include/string.h \
  /usr/include/x86_64-linux-gnu/bits/types/locale_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h \
  /usr/include/strings.h \
  /usr/include/x86_64-linux-gnu/bits/strings_fortified.h \
  /usr/include/x86_64-linux-gnu/bits/string_fortified.h \
  /usr/include/stdio.h \
  /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2-decl.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  include/applet_tables.h \
  include/usage.h \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/use/bb/crypt/sha.h) \
    $(wildcard include/config/feature/default/passwd/algo.h) \
    $(wildcard include/config/feature/bzip2/decompress.h) \
    $(wildcard include/config/feature/cpio/o.h) \
    $(wildcard include/config/feature/cpio/p.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/gzip/decompress.h) \
    $(wildcard include/config/feature/gzip/levels.h) \
    $(wildcard include/config/feature/tar/create.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/tar/nopreserve/time.h) \
    $(wildcard include/config/feature/tar/from.h) \
    $(wildcard include/config/feature/tar/long/options.h) \
    $(wildcard include/config/feature/setconsole/long/options.h) \
    $(wildcard include/config/feature/catv.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/date/isofmt.h) \
    $(wildcard include/config/feature/date/compat.h) \
    $(wildcard include/config/feature/dd/ibs/obs.h) \
    $(wildcard include/config/feature/dd/status.h) \
    $(wildcard include/config/feature/human/readable.h) \
    $(wildcard include/config/feature/df/fancy.h) \
    $(wildcard include/config/feature/du/default/blocksize/1k.h) \
    $(wildcard include/config/feature/fancy/echo.h) \
    $(wildcard include/config/feature/expand/long/options.h) \
    $(wildcard include/config/feature/unexpand/long/options.h) \
    $(wildcard include/config/feature/fancy/head.h) \
    $(wildcard include/config/feature/ls/followlinks.h) \
    $(wildcard include/config/feature/ls/recursive.h) \
    $(wildcard include/config/feature/ls/filetypes.h) \
    $(wildcard include/config/feature/ls/sortfiles.h) \
    $(wildcard include/config/feature/ls/timestamps.h) \
    $(wildcard include/config/feature/ls/width.h) \
    $(wildcard include/config/feature/ls/color.h) \
    $(wildcard include/config/feature/md5/sha1/sum/check.h) \
    $(wildcard include/config/feature/readlink/follow.h) \
    $(wildcard include/config/feature/rmdir/long/options.h) \
    $(wildcard include/config/feature/fancy/sleep.h) \
    $(wildcard include/config/feature/sort/big.h) \
    $(wildcard include/config/feature/stat/filesystem.h) \
    $(wildcard include/config/feature/stat/format.h) \
    $(wildcard include/config/feature/sync/fancy.h) \
    $(wildcard include/config/feature/fancy/tail.h) \
    $(wildcard include/config/feature/touch/susv3.h) \
    $(wildcard include/config/feature/touch/noderef.h) \
    $(wildcard include/config/include/susv2.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/run/parts/long/options.h) \
    $(wildcard include/config/feature/run/parts/fancy.h) \
    $(wildcard include/config/feature/start/stop/daemon/long/options.h) \
    $(wildcard include/config/feature/start/stop/daemon/fancy.h) \
    $(wildcard include/config/feature/awk/gnu/extensions.h) \
    $(wildcard include/config/feature/vi/colon.h) \
    $(wildcard include/config/feature/vi/readonly.h) \
    $(wildcard include/config/feature/find/xdev.h) \
    $(wildcard include/config/feature/find/maxdepth.h) \
    $(wildcard include/config/feature/find/depth.h) \
    $(wildcard include/config/feature/find/paren.h) \
    $(wildcard include/config/feature/find/not.h) \
    $(wildcard include/config/feature/find/path.h) \
    $(wildcard include/config/feature/find/regex.h) \
    $(wildcard include/config/feature/find/type.h) \
    $(wildcard include/config/feature/find/perm.h) \
    $(wildcard include/config/feature/find/mtime.h) \
    $(wildcard include/config/feature/find/mmin.h) \
    $(wildcard include/config/feature/find/newer.h) \
    $(wildcard include/config/feature/find/inum.h) \
    $(wildcard include/config/feature/find/user.h) \
    $(wildcard include/config/feature/find/group.h) \
    $(wildcard include/config/feature/find/size.h) \
    $(wildcard include/config/feature/find/links.h) \
    $(wildcard include/config/feature/find/context.h) \
    $(wildcard include/config/feature/find/prune.h) \
    $(wildcard include/config/feature/find/print0.h) \
    $(wildcard include/config/feature/find/exec.h) \
    $(wildcard include/config/feature/find/exec/plus.h) \
    $(wildcard include/config/feature/find/delete.h) \
    $(wildcard include/config/extra/compat.h) \
    $(wildcard include/config/feature/grep/context.h) \
    $(wildcard include/config/feature/xargs/support/confirmation.h) \
    $(wildcard include/config/feature/xargs/support/zero/term.h) \
    $(wildcard include/config/feature/xargs/support/repl/str.h) \
    $(wildcard include/config/feature/xargs/support/termopt.h) \
    $(wildcard include/config/feature/wtmp.h) \
    $(wildcard include/config/feature/use/inittab.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/feature/mime/charset.h) \
    $(wildcard include/config/feature/popmaildir/delivery.h) \
    $(wildcard include/config/makemime.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/feature/crond/dir.h) \
    $(wildcard include/config/feature/dc/libm.h) \
    $(wildcard include/config/devfsd/fg/np.h) \
    $(wildcard include/config/feature/hdparm/hdio/getset/dma.h) \
    $(wildcard include/config/feature/hdparm/get/identity.h) \
    $(wildcard include/config/feature/hdparm/hdio/scan/hwif.h) \
    $(wildcard include/config/feature/hdparm/hdio/unregister/hwif.h) \
    $(wildcard include/config/feature/hdparm/hdio/drive/reset.h) \
    $(wildcard include/config/feature/hdparm/hdio/tristate/hwif.h) \
    $(wildcard include/config/feature/less/regexp.h) \
    $(wildcard include/config/feature/less/flags.h) \
    $(wildcard include/config/feature/less/truncate.h) \
    $(wildcard include/config/feature/makedevs/leaf.h) \
    $(wildcard include/config/feature/makedevs/table.h) \
    $(wildcard include/config/modprobe/small.h) \
    $(wildcard include/config/feature/2/4/modules.h) \
    $(wildcard include/config/feature/cmdline/module/options.h) \
    $(wildcard include/config/feature/insmod/load/map.h) \
    $(wildcard include/config/feature/modprobe/blacklist.h) \
    $(wildcard include/config/feature/brctl/show.h) \
    $(wildcard include/config/feature/brctl/fancy.h) \
    $(wildcard include/config/feature/ftpd/authentication.h) \
    $(wildcard include/config/feature/ftpgetput/long/options.h) \
    $(wildcard include/config/feature/httpd/setuid.h) \
    $(wildcard include/config/feature/httpd/basic/auth.h) \
    $(wildcard include/config/feature/httpd/auth/md5.h) \
    $(wildcard include/config/feature/ifconfig/status.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/ifconfig/slip.h) \
    $(wildcard include/config/feature/ifconfig/hw.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/feature/ifconfig/memstart/ioaddr/irq.h) \
    $(wildcard include/config/feature/ifupdown/mapping.h) \
    $(wildcard include/config/feature/ip/rule.h) \
    $(wildcard include/config/feature/ip/address.h) \
    $(wildcard include/config/feature/ip/route.h) \
    $(wildcard include/config/feature/ip/link.h) \
    $(wildcard include/config/feature/ip/tunnel.h) \
    $(wildcard include/config/feature/ip/neigh.h) \
    $(wildcard include/config/feature/ipcalc/fancy.h) \
    $(wildcard include/config/feature/ipcalc/long/options.h) \
    $(wildcard include/config/feature/nameif/extended.h) \
    $(wildcard include/config/nc/110/compat.h) \
    $(wildcard include/config/nc/server.h) \
    $(wildcard include/config/nc/extra.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/netstat/wide.h) \
    $(wildcard include/config/feature/netstat/prg.h) \
    $(wildcard include/config/feature/ntpd/server.h) \
    $(wildcard include/config/feature/ntpd/conf.h) \
    $(wildcard include/config/feature/fancy/ping.h) \
    $(wildcard include/config/ping6.h) \
    $(wildcard include/config/feature/tc/ingress.h) \
    $(wildcard include/config/feature/telnet/autologin.h) \
    $(wildcard include/config/feature/telnetd/standalone.h) \
    $(wildcard include/config/feature/telnetd/inetd/wait.h) \
    $(wildcard include/config/feature/tftp/get.h) \
    $(wildcard include/config/feature/tftp/put.h) \
    $(wildcard include/config/feature/tftp/blocksize.h) \
    $(wildcard include/config/traceroute6.h) \
    $(wildcard include/config/feature/traceroute/use/icmp.h) \
    $(wildcard include/config/feature/traceroute/verbose.h) \
    $(wildcard include/config/feature/tunctl/ug.h) \
    $(wildcard include/config/feature/wget/long/options.h) \
    $(wildcard include/config/feature/wget/timeout.h) \
    $(wildcard include/config/feature/pidof/single.h) \
    $(wildcard include/config/feature/pidof/omit.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/wide.h) \
    $(wildcard include/config/feature/ps/long.h) \
    $(wildcard include/config/feature/top/smp/cpu.h) \
    $(wildcard include/config/show/threads/or/top/smp.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/interactive.h) \
    $(wildcard include/config/feature/top/cpu/usage/percentage.h) \
    $(wildcard include/config/feature/chcon/long/options.h) \
    $(wildcard include/config/feature/runcon/long/options.h) \
    $(wildcard include/config/feature/setfiles/check/option.h) \
    $(wildcard include/config/feature/syslogd/cfg.h) \
    $(wildcard include/config/feature/remote/log.h) \
    $(wildcard include/config/feature/ipc/syslog.h) \
    $(wildcard include/config/feature/kmsg/syslog.h) \
    $(wildcard include/config/feature/rotate/logfile.h) \
    $(wildcard include/config/feature/syslogd/dup.h) \
    $(wildcard include/config/feature/acpid/compat.h) \
    $(wildcard include/config/feature/eject/scsi.h) \
    $(wildcard include/config/feature/fdisk/blksize.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/hexdump/reverse.h) \
    $(wildcard include/config/feature/hwclock/long/options.h) \
    $(wildcard include/config/feature/last/fancy.h) \
    $(wildcard include/config/feature/mdev/conf.h) \
    $(wildcard include/config/feature/mdev/rename.h) \
    $(wildcard include/config/feature/mdev/exec.h) \
    $(wildcard include/config/feature/mount/fake.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/mount/helpers.h) \
    $(wildcard include/config/feature/mount/verbose.h) \
    $(wildcard include/config/feature/mount/othertab.h) \
    $(wildcard include/config/feature/mount/loop.h) \
    $(wildcard include/config/feature/mount/flags.h) \
    $(wildcard include/config/feature/nsenter/long/opts.h) \
    $(wildcard include/config/scriptreplay.h) \
    $(wildcard include/config/feature/swapon/discard.h) \
    $(wildcard include/config/feature/swapon/pri.h) \
    $(wildcard include/config/feature/umount/all.h) \
    $(wildcard include/config/udhcp/debug.h) \
    $(wildcard include/config/udhcp/verbose.h) \
    $(wildcard include/config/feature/udhcp/port.h) \
    $(wildcard include/config/udhcpc/default/script.h) \
    $(wildcard include/config/feature/udhcpc/arping.h) \
  include/applets.h \
    $(wildcard include/config/feature/verbose/usage.h) \
    $(wildcard include/config/install/no/usr.h) \
    $(wildcard include/config/ar.h) \
    $(wildcard include/config/uncompress.h) \
    $(wildcard include/config/gunzip.h) \
    $(wildcard include/config/zcat.h) \
    $(wildcard include/config/bunzip2.h) \
    $(wildcard include/config/bzcat.h) \
    $(wildcard include/config/unlzma.h) \
    $(wildcard include/config/lzcat.h) \
    $(wildcard include/config/lzma.h) \
    $(wildcard include/config/unxz.h) \
    $(wildcard include/config/xzcat.h) \
    $(wildcard include/config/xz.h) \
    $(wildcard include/config/bzip2.h) \
    $(wildcard include/config/cpio.h) \
    $(wildcard include/config/dpkg.h) \
    $(wildcard include/config/dpkg/deb.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/lzop.h) \
    $(wildcard include/config/unlzop.h) \
    $(wildcard include/config/lzopcat.h) \
    $(wildcard include/config/rpm.h) \
    $(wildcard include/config/rpm2cpio.h) \
    $(wildcard include/config/tar.h) \
    $(wildcard include/config/unzip.h) \
    $(wildcard include/config/chvt.h) \
    $(wildcard include/config/clear.h) \
    $(wildcard include/config/deallocvt.h) \
    $(wildcard include/config/dumpkmap.h) \
    $(wildcard include/config/fgconsole.h) \
    $(wildcard include/config/kbd/mode.h) \
    $(wildcard include/config/loadfont.h) \
    $(wildcard include/config/setfont.h) \
    $(wildcard include/config/loadkmap.h) \
    $(wildcard include/config/openvt.h) \
    $(wildcard include/config/reset.h) \
    $(wildcard include/config/resize.h) \
    $(wildcard include/config/setconsole.h) \
    $(wildcard include/config/setkeycodes.h) \
    $(wildcard include/config/setlogcons.h) \
    $(wildcard include/config/showkey.h) \
    $(wildcard include/config/basename.h) \
    $(wildcard include/config/cat.h) \
    $(wildcard include/config/chgrp.h) \
    $(wildcard include/config/chmod.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/chroot.h) \
    $(wildcard include/config/cksum.h) \
    $(wildcard include/config/comm.h) \
    $(wildcard include/config/cp.h) \
    $(wildcard include/config/cut.h) \
    $(wildcard include/config/date.h) \
    $(wildcard include/config/dd.h) \
    $(wildcard include/config/df.h) \
    $(wildcard include/config/dirname.h) \
    $(wildcard include/config/dos2unix.h) \
    $(wildcard include/config/unix2dos.h) \
    $(wildcard include/config/du.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/env.h) \
    $(wildcard include/config/expand.h) \
    $(wildcard include/config/unexpand.h) \
    $(wildcard include/config/expr.h) \
    $(wildcard include/config/factor.h) \
    $(wildcard include/config/false.h) \
    $(wildcard include/config/fold.h) \
    $(wildcard include/config/fsync.h) \
    $(wildcard include/config/head.h) \
    $(wildcard include/config/hostid.h) \
    $(wildcard include/config/groups.h) \
    $(wildcard include/config/id.h) \
    $(wildcard include/config/install.h) \
    $(wildcard include/config/link.h) \
    $(wildcard include/config/ln.h) \
    $(wildcard include/config/logname.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/md5sum.h) \
    $(wildcard include/config/sha1sum.h) \
    $(wildcard include/config/sha3sum.h) \
    $(wildcard include/config/sha256sum.h) \
    $(wildcard include/config/sha512sum.h) \
    $(wildcard include/config/mkdir.h) \
    $(wildcard include/config/mkfifo.h) \
    $(wildcard include/config/mknod.h) \
    $(wildcard include/config/mktemp.h) \
    $(wildcard include/config/mv.h) \
    $(wildcard include/config/nice.h) \
    $(wildcard include/config/nl.h) \
    $(wildcard include/config/nohup.h) \
    $(wildcard include/config/nproc.h) \
    $(wildcard include/config/od.h) \
    $(wildcard include/config/paste.h) \
    $(wildcard include/config/printenv.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/pwd.h) \
    $(wildcard include/config/readlink.h) \
    $(wildcard include/config/realpath.h) \
    $(wildcard include/config/rm.h) \
    $(wildcard include/config/rmdir.h) \
    $(wildcard include/config/seq.h) \
    $(wildcard include/config/shred.h) \
    $(wildcard include/config/shuf.h) \
    $(wildcard include/config/sleep.h) \
    $(wildcard include/config/sort.h) \
    $(wildcard include/config/split.h) \
    $(wildcard include/config/stat.h) \
    $(wildcard include/config/stty.h) \
    $(wildcard include/config/sum.h) \
    $(wildcard include/config/sync.h) \
    $(wildcard include/config/tac.h) \
    $(wildcard include/config/tail.h) \
    $(wildcard include/config/tee.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/test1.h) \
    $(wildcard include/config/test2.h) \
    $(wildcard include/config/timeout.h) \
    $(wildcard include/config/touch.h) \
    $(wildcard include/config/tr.h) \
    $(wildcard include/config/true.h) \
    $(wildcard include/config/truncate.h) \
    $(wildcard include/config/tty.h) \
    $(wildcard include/config/uname.h) \
    $(wildcard include/config/uniq.h) \
    $(wildcard include/config/unlink.h) \
    $(wildcard include/config/usleep.h) \
    $(wildcard include/config/uudecode.h) \
    $(wildcard include/config/base64.h) \
    $(wildcard include/config/uuencode.h) \
    $(wildcard include/config/wc.h) \
    $(wildcard include/config/users.h) \
    $(wildcard include/config/w.h) \
    $(wildcard include/config/who.h) \
    $(wildcard include/config/whoami.h) \
    $(wildcard include/config/yes.h) \
    $(wildcard include/config/pipe/progress.h) \
    $(wildcard include/config/run/parts.h) \
    $(wildcard include/config/start/stop/daemon.h) \
    $(wildcard include/config/which.h) \
    $(wildcard include/config/chattr.h) \
    $(wildcard include/config/fsck.h) \
    $(wildcard include/config/lsattr.h) \
    $(wildcard include/config/tune2fs.h) \
    $(wildcard include/config/awk.h) \
    $(wildcard include/config/cmp.h) \
    $(wildcard include/config/diff.h) \
    $(wildcard include/config/ed.h) \
    $(wildcard include/config/patch.h) \
    $(wildcard include/config/sed.h) \
    $(wildcard include/config/vi.h) \
    $(wildcard include/config/find.h) \
    $(wildcard include/config/grep.h) \
    $(wildcard include/config/egrep.h) \
    $(wildcard include/config/fgrep.h) \
    $(wildcard include/config/xargs.h) \
    $(wildcard include/config/bootchartd.h) \
    $(wildcard include/config/halt.h) \
    $(wildcard include/config/poweroff.h) \
    $(wildcard include/config/reboot.h) \
    $(wildcard include/config/init.h) \
    $(wildcard include/config/linuxrc.h) \
    $(wildcard include/config/unit/test.h) \
    $(wildcard include/config/add/shell.h) \
    $(wildcard include/config/remove/shell.h) \
    $(wildcard include/config/addgroup.h) \
    $(wildcard include/config/adduser.h) \
    $(wildcard include/config/chpasswd.h) \
    $(wildcard include/config/cryptpw.h) \
    $(wildcard include/config/mkpasswd.h) \
    $(wildcard include/config/deluser.h) \
    $(wildcard include/config/delgroup.h) \
    $(wildcard include/config/getty.h) \
    $(wildcard include/config/login.h) \
    $(wildcard include/config/passwd.h) \
    $(wildcard include/config/su.h) \
    $(wildcard include/config/sulogin.h) \
    $(wildcard include/config/vlock.h) \
    $(wildcard include/config/popmaildir.h) \
    $(wildcard include/config/reformime.h) \
    $(wildcard include/config/sendmail.h) \
    $(wildcard include/config/adjtimex.h) \
    $(wildcard include/config/bbconfig.h) \
    $(wildcard include/config/beep.h) \
    $(wildcard include/config/chat.h) \
    $(wildcard include/config/conspy.h) \
    $(wildcard include/config/crond.h) \
    $(wildcard include/config/crontab.h) \
    $(wildcard include/config/dc.h) \
    $(wildcard include/config/devfsd.h) \
    $(wildcard include/config/devmem.h) \
    $(wildcard include/config/fbsplash.h) \
    $(wildcard include/config/flash/eraseall.h) \
    $(wildcard include/config/flash/lock.h) \
    $(wildcard include/config/flash/unlock.h) \
    $(wildcard include/config/flashcp.h) \
    $(wildcard include/config/hdparm.h) \
    $(wildcard include/config/i2cget.h) \
    $(wildcard include/config/i2cset.h) \
    $(wildcard include/config/i2cdump.h) \
    $(wildcard include/config/i2cdetect.h) \
    $(wildcard include/config/inotifyd.h) \
    $(wildcard include/config/less.h) \
    $(wildcard include/config/lsscsi.h) \
    $(wildcard include/config/makedevs.h) \
    $(wildcard include/config/man.h) \
    $(wildcard include/config/microcom.h) \
    $(wildcard include/config/mt.h) \
    $(wildcard include/config/nandwrite.h) \
    $(wildcard include/config/nanddump.h) \
    $(wildcard include/config/partprobe.h) \
    $(wildcard include/config/raidautorun.h) \
    $(wildcard include/config/readahead.h) \
    $(wildcard include/config/rfkill.h) \
    $(wildcard include/config/runlevel.h) \
    $(wildcard include/config/rx.h) \
    $(wildcard include/config/setserial.h) \
    $(wildcard include/config/strings.h) \
    $(wildcard include/config/time.h) \
    $(wildcard include/config/ttysize.h) \
    $(wildcard include/config/ubiattach.h) \
    $(wildcard include/config/ubidetach.h) \
    $(wildcard include/config/ubimkvol.h) \
    $(wildcard include/config/ubirmvol.h) \
    $(wildcard include/config/ubirsvol.h) \
    $(wildcard include/config/ubiupdatevol.h) \
    $(wildcard include/config/ubirename.h) \
    $(wildcard include/config/volname.h) \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/depmod.h) \
    $(wildcard include/config/insmod.h) \
    $(wildcard include/config/lsmod.h) \
    $(wildcard include/config/modinfo.h) \
    $(wildcard include/config/modprobe.h) \
    $(wildcard include/config/rmmod.h) \
    $(wildcard include/config/arp.h) \
    $(wildcard include/config/arping.h) \
    $(wildcard include/config/brctl.h) \
    $(wildcard include/config/dnsd.h) \
    $(wildcard include/config/ether/wake.h) \
    $(wildcard include/config/ftpd.h) \
    $(wildcard include/config/ftpget.h) \
    $(wildcard include/config/ftpput.h) \
    $(wildcard include/config/dnsdomainname.h) \
    $(wildcard include/config/hostname.h) \
    $(wildcard include/config/httpd.h) \
    $(wildcard include/config/ifconfig.h) \
    $(wildcard include/config/ifenslave.h) \
    $(wildcard include/config/ifplugd.h) \
    $(wildcard include/config/ifup.h) \
    $(wildcard include/config/ifdown.h) \
    $(wildcard include/config/inetd.h) \
    $(wildcard include/config/ip.h) \
    $(wildcard include/config/ipaddr.h) \
    $(wildcard include/config/iplink.h) \
    $(wildcard include/config/iproute.h) \
    $(wildcard include/config/iprule.h) \
    $(wildcard include/config/iptunnel.h) \
    $(wildcard include/config/ipneigh.h) \
    $(wildcard include/config/ipcalc.h) \
    $(wildcard include/config/fakeidentd.h) \
    $(wildcard include/config/nameif.h) \
    $(wildcard include/config/nbdclient.h) \
    $(wildcard include/config/nc.h) \
    $(wildcard include/config/netstat.h) \
    $(wildcard include/config/nslookup.h) \
    $(wildcard include/config/ntpd.h) \
    $(wildcard include/config/ping.h) \
    $(wildcard include/config/pscan.h) \
    $(wildcard include/config/slattach.h) \
    $(wildcard include/config/ssl/client.h) \
    $(wildcard include/config/tcpsvd.h) \
    $(wildcard include/config/udpsvd.h) \
    $(wildcard include/config/telnet.h) \
    $(wildcard include/config/telnetd.h) \
    $(wildcard include/config/tftp.h) \
    $(wildcard include/config/tftpd.h) \
    $(wildcard include/config/traceroute.h) \
    $(wildcard include/config/tunctl.h) \
    $(wildcard include/config/vconfig.h) \
    $(wildcard include/config/wget.h) \
    $(wildcard include/config/whois.h) \
    $(wildcard include/config/zcip.h) \
    $(wildcard include/config/lpd.h) \
    $(wildcard include/config/lpq.h) \
    $(wildcard include/config/lpr.h) \
    $(wildcard include/config/free.h) \
    $(wildcard include/config/fuser.h) \
    $(wildcard include/config/iostat.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/killall5.h) \
    $(wildcard include/config/lsof.h) \
    $(wildcard include/config/mpstat.h) \
    $(wildcard include/config/nmeter.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/powertop.h) \
    $(wildcard include/config/ps.h) \
    $(wildcard include/config/pstree.h) \
    $(wildcard include/config/pwdx.h) \
    $(wildcard include/config/smemcap.h) \
    $(wildcard include/config/bb/sysctl.h) \
    $(wildcard include/config/top.h) \
    $(wildcard include/config/uptime.h) \
    $(wildcard include/config/watch.h) \
    $(wildcard include/config/chpst.h) \
    $(wildcard include/config/envdir.h) \
    $(wildcard include/config/envuidgid.h) \
    $(wildcard include/config/setuidgid.h) \
    $(wildcard include/config/softlimit.h) \
    $(wildcard include/config/runsv.h) \
    $(wildcard include/config/runsvdir.h) \
    $(wildcard include/config/sv.h) \
    $(wildcard include/config/svc.h) \
    $(wildcard include/config/svlogd.h) \
    $(wildcard include/config/chcon.h) \
    $(wildcard include/config/getenforce.h) \
    $(wildcard include/config/getsebool.h) \
    $(wildcard include/config/load/policy.h) \
    $(wildcard include/config/matchpathcon.h) \
    $(wildcard include/config/runcon.h) \
    $(wildcard include/config/selinuxenabled.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/setenforce.h) \
    $(wildcard include/config/setfiles.h) \
    $(wildcard include/config/restorecon.h) \
    $(wildcard include/config/setsebool.h) \
    $(wildcard include/config/ash.h) \
    $(wildcard include/config/sh/is/ash.h) \
    $(wildcard include/config/bash/is/ash.h) \
    $(wildcard include/config/cttyhack.h) \
    $(wildcard include/config/hush.h) \
    $(wildcard include/config/msh.h) \
    $(wildcard include/config/sh/is/hush.h) \
    $(wildcard include/config/bash/is/hush.h) \
    $(wildcard include/config/klogd.h) \
    $(wildcard include/config/logger.h) \
    $(wildcard include/config/logread.h) \
    $(wildcard include/config/syslogd.h) \
    $(wildcard include/config/acpid.h) \
    $(wildcard include/config/blkdiscard.h) \
    $(wildcard include/config/blkid.h) \
    $(wildcard include/config/blockdev.h) \
    $(wildcard include/config/cal.h) \
    $(wildcard include/config/chrt.h) \
    $(wildcard include/config/dmesg.h) \
    $(wildcard include/config/eject.h) \
    $(wildcard include/config/fallocate.h) \
    $(wildcard include/config/fatattr.h) \
    $(wildcard include/config/fbset.h) \
    $(wildcard include/config/fdformat.h) \
    $(wildcard include/config/fdisk.h) \
    $(wildcard include/config/findfs.h) \
    $(wildcard include/config/flock.h) \
    $(wildcard include/config/fdflush.h) \
    $(wildcard include/config/freeramdisk.h) \
    $(wildcard include/config/fsck/minix.h) \
    $(wildcard include/config/fsfreeze.h) \
    $(wildcard include/config/fstrim.h) \
    $(wildcard include/config/getopt.h) \
    $(wildcard include/config/hexdump.h) \
    $(wildcard include/config/hd.h) \
    $(wildcard include/config/xxd.h) \
    $(wildcard include/config/hwclock.h) \
    $(wildcard include/config/ionice.h) \
    $(wildcard include/config/ipcrm.h) \
    $(wildcard include/config/ipcs.h) \
    $(wildcard include/config/last.h) \
    $(wildcard include/config/losetup.h) \
    $(wildcard include/config/lspci.h) \
    $(wildcard include/config/lsusb.h) \
    $(wildcard include/config/mdev.h) \
    $(wildcard include/config/mesg.h) \
    $(wildcard include/config/mke2fs.h) \
    $(wildcard include/config/mkfs/ext2.h) \
    $(wildcard include/config/mkfs/minix.h) \
    $(wildcard include/config/mkfs/reiser.h) \
    $(wildcard include/config/mkdosfs.h) \
    $(wildcard include/config/mkfs/vfat.h) \
    $(wildcard include/config/mkswap.h) \
    $(wildcard include/config/more.h) \
    $(wildcard include/config/mount.h) \
    $(wildcard include/config/mountpoint.h) \
    $(wildcard include/config/nsenter.h) \
    $(wildcard include/config/pivot/root.h) \
    $(wildcard include/config/rdate.h) \
    $(wildcard include/config/rdev.h) \
    $(wildcard include/config/readprofile.h) \
    $(wildcard include/config/renice.h) \
    $(wildcard include/config/rev.h) \
    $(wildcard include/config/rtcwake.h) \
    $(wildcard include/config/script.h) \
    $(wildcard include/config/setarch.h) \
    $(wildcard include/config/linux32.h) \
    $(wildcard include/config/linux64.h) \
    $(wildcard include/config/setpriv.h) \
    $(wildcard include/config/setsid.h) \
    $(wildcard include/config/swapon.h) \
    $(wildcard include/config/swapoff.h) \
    $(wildcard include/config/switch/root.h) \
    $(wildcard include/config/taskset.h) \
    $(wildcard include/config/uevent.h) \
    $(wildcard include/config/umount.h) \
    $(wildcard include/config/unshare.h) \
    $(wildcard include/config/wall.h) \
    $(wildcard include/config/udhcpc6.h) \
    $(wildcard include/config/udhcpc.h) \
    $(wildcard include/config/udhcpd.h) \
    $(wildcard include/config/dhcprelay.h) \
    $(wildcard include/config/dumpleases.h) \

applets/usage_pod: $(deps_applets/usage_pod)

$(deps_applets/usage_pod):
