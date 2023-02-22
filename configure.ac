##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

m4_include([maint/version.m4])

AC_PREREQ([2.69])
AC_INIT([PFM],
        PFM_VERSION_m4,
        [eranian@gmail.com],
        [pfm],
        [http://perfmon2.sourceforge.net])

AC_CONFIG_SRCDIR([examples/check_events.c])
AC_CONFIG_HEADERS([config.h])

AC_CONFIG_AUX_DIR([confdb])
AC_CONFIG_MACRO_DIR([confdb])

AC_CANONICAL_TARGET
AC_CANONICAL_BUILD
AC_CANONICAL_HOST

AC_USE_SYSTEM_EXTENSIONS

PFMLIB_VERSION="-release PFM_VERSION_m4"
AC_SUBST(PFMLIB_VERSION)

# Enable Automake
AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects])
AM_PROG_AR
AM_SILENT_RULES([yes])

# Enable Libtool support
LT_INIT()

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

# Checks for config parameters
AS_CASE([$host_os],
        [linux*], [
                   CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_OS_LINUX"
                   CONFIG_PFMLIB_NOPYTHON=y
                   CONFIG_PFMLIB_OS_LINUX=y
                  ],
        [cygwin*|mingw*],
                  [
                   CPPFLAGS="$CPPFLAGS -DPFMLIB_WINDOWS"
                   CONFIG_PFMLIB_OS_WINDOWS=y
                  ],
        [])

AS_CASE([$host_cpu],
        [ia64],   [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_IA64"],
        [x86_64], [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_X86 -DCONFIG_PFMLIB_ARCH_X86_64"],
        [i386],   [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_I386"],
        [mips],   [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_MIPS"],
        [powerpc],[CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_POWERPC"],
        [sparc],  [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_SPARC"],
        [arm],    [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_ARM"],
        [aarch64],[CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_ARM64"],
        [arm64],  [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_ARM64"],
        [s390x],  [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_S390X"],
        [cell],   [CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_ARCH_CELL"],
        [])

AC_ARG_ENABLE([debug],
              [AC_HELP_STRING([--enable-debug],
                              [Build libpfm with debug symbols])],
              [
               CFLAGS="$CFLAGS -g"
               CPPFLAGS="$CPPFLAGS -DCONFIG_PFMLIB_DEBUG"
              ],
              [])

AC_ARG_ENABLE([embedded],
              [AS_HELP_STRING([--enable-embedded],
                              [Enables embedded builds])],
              [enable_embedded=y],
              [enable_embedded=n])

CFLAGS="$CFLAGS -O2"

AC_MSG_CHECKING([for ncurses devel])
LIBS=-lncurses
AC_LINK_IFELSE([AC_LANG_SOURCE([
                                #include <ncurses.h>
                                int main(void) {
                                    printw();
                                    return 0;
                                }
                               ])],
               [
                have_ncurses_dev=y
                AC_MSG_RESULT([yes])
               ],
               [
                have_ncurses_dev=n
                AC_MSG_RESULT([no])
                LIBS=
               ])

AM_CONDITIONAL([BUILD_PFMLIB_ARCH_IA64],   [test "$host_cpu" = "ia64"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_X86],    [test "$host_cpu" = "x86_64"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_I386],   [test "$host_cpu" = "i386"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_MIPS],   [test "$host_cpu" = "mips"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_POWERPC],[test "$host_cpu" = "powerpc"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_SPARC],  [test "$host_cpu" = "sparc"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_ARM],    [test "$host_cpu" = "arm"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_ARM64],  [test "$host_cpu" = "aarch64"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_ARM64],  [test "$host_cpu" = "arm64"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_S390X],  [test "$host_cpu" = "s390x"])
AM_CONDITIONAL([BUILD_PFMLIB_ARCH_CELL],   [test "$host_cpu" = "cell"])
AM_CONDITIONAL([BUILD_PFMLIB_NOPYTHON],    [test "x$CONFIG_PFMLIB_NOPYTHON" = "xy"])
AM_CONDITIONAL([BUILD_PFMLIB_OS_LINUX],    [test "x$CONFIG_PFMLIB_OS_LINUX" = "xy"])
AM_CONDITIONAL([BUILD_PFMLIB_OS_WINDOWS],  [test "x$CONFIG_PFMLIB_OS_WINDOWS" = "xy"])
AM_CONDITIONAL([BUILD_RTOP],               [test "x$have_ncurses_dev" = "xy"])
AM_CONDITIONAL([EMBEDDED_BUILD],           [test "x$enable_embedded" = "xy"])

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h     \
                  inttypes.h  \
                  limits.h    \
                  locale.h    \
                  malloc.h    \
                  stdlib.h    \
                  string.h    \
                  sys/ioctl.h \
                  sys/param.h \
                  sys/time.h  \
                  termios.h   \
                  unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_INLINE
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_FUNC_MMAP
AC_FUNC_REALLOC
AC_CHECK_FUNCS([alarm        \
                getpagesize  \
                gettimeofday \
                memset       \
                munmap       \
                putenv       \
                regcomp      \
                setenv       \
                setlocale    \
                strcasecmp   \
                strchr       \
                strdup       \
                strerror     \
                strncasecmp  \
                strpbrk      \
                strstr       \
                strtol       \
                strtoul      \
                strtoull])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
