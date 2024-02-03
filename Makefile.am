##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

ACLOCAL_AMFLAGS = -I confdb

AM_CFLAGS   = $(CFLAGS)
AM_CPPFLAGS = $(CPPFLAGS)
AM_LDFLAGS  = $(LDFLAGS)

pfm_sources =
examples_list =
perf_examples_list =
testlist =
dist_noinst_SCRIPTS = autogen.sh
noinst_HEADERS =
bin_PROGRAMS =
include_HEADERS =
man_MANS =
EXTRA_PROGRAMS =
EXTRA_DIST = README COPYING

include $(top_srcdir)/lib/Makefile.mk
include $(top_srcdir)/tests/Makefile.mk
include $(top_srcdir)/include/Makefile.mk
include $(top_srcdir)/docs/Makefile.mk
include $(top_srcdir)/perf_examples/Makefile.mk
include $(top_srcdir)/examples/Makefile.mk

if EMBEDDED_BUILD
noinst_LTLIBRARIES = libpfm.la
libpfm_la_LDFLAGS = $(AM_LDFLAGS) -avoid-version
else
lib_LTLIBRARIES = libpfm.la
libpfm_la_LDFLAGS = $(AM_LDFLAGS) $(PFMLIB_VERSION)
endif

libpfm_la_SOURCES  = $(pfm_sources)
libpfm_la_CPPFLAGS = $(AM_CPPFLAGS)
libpfm_la_LIBADD   = $(LIBS)

perf_examples: $(perf_examples_list)

examples: $(examples_list)

tests: $(testlist)
