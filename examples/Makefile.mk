##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

EXTRA_PROGRAMS += $(examples_list)

AM_CPPFLAGS += -I$(top_srcdir)/examples -D_GNU_SOURCE
LDADD  += -lm

if BUILD_PFMLIB_OS_LINUX
AM_LDFLAGS += -pthread
LDADD += -lrt
endif # end of BUILD_PFMLIB_OS_LINUX

if BUILD_PFMLIB_OS_WINDOWS
LDADD += -lgnurx
endif # end of BUILD_PFMLIB_OS_WINDOWS

examples_list +=            \
    examples/showevtinfo    \
    examples/check_events
