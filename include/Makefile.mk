##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

AM_CPPFLAGS += -I$(top_srcdir)/include

include_HEADERS +=                     \
    include/perfmon/pfmlib.h           \
    include/perfmon/pfmlib_perf_event.h

if BUILD_PFMLIB_OS_LINUX
include_HEADERS +=                     \
    include/perfmon/perf_event.h
endif # end of BUILD_PFMLIB_OS_LINUX
