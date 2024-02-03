##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

EXTRA_PROGRAMS += $(testlist)

testlist += tests/validate

tests_validate_SOURCES = tests/validate.c
tests_validate_LDADD   = -lm libpfm.la

if BUILD_PFMLIB_OS_LINUX
tests_validate_SOURCES += tests/validate_perf.c
tests_validate_CPPFLAGS = -I$(top_srcdir)/tests -I$(top_srcdir)/include -D_GNU_SOURCE
tests_validate_LDFLAGS  = -L$(top_builddir)/lib/.libs
tests_validate_CFLAGS   = -pthread
endif # end of BUILD_PFMLIB_OS_LINUX

if BUILD_PFMLIB_ARCH_X86
tests_validate_SOURCES += tests/validate_x86.c
endif # end of BUILD_PFMLIB_ARCH_X86

if BUILD_PFMLIB_ARCH_MIPS
tests_validate_SOURCES += tests/validate_mips.c
endif # end of BUILD_PFMLIB_ARCH_MIPS

if BUILD_PFMLIB_ARCH_ARM
tests_validate_SOURCES += tests/validate_arm.c
endif # end of BUILD_PFMLIB_ARCH_ARM

if BUILD_PFMLIB_ARCH_ARM64
tests_validate_SOURCES += tests/validate_arm64.c
endif # end of BUILD_PFMLIB_ARCH_ARM64

if BUILD_PFMLIB_ARCH_POWERPC
tests_validate_SOURCES += tests/validate_power.c
endif # end of BUILD_PFMLIB_ARCH_POWERPC
