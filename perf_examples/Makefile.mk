##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

EXTRA_PROGRAMS += $(perf_examples_list)

AM_CPPFLAGS += -I$(top_srcdir)/perf_examples -D_GNU_SOURCE
AM_LDFLAGS  += -L$(top_builddir)/lib/.libs -pthread
LDADD        = perf_examples/perf_util.o libpfm.la

perf_examples_list +=                   \
    perf_examples/self                  \
    perf_examples/self_basic            \
    perf_examples/self_count            \
    perf_examples/task                  \
    perf_examples/task_attach_timeout   \
    perf_examples/syst                  \
    perf_examples/notify_self           \
    perf_examples/notify_group          \
    perf_examples/task_smpl             \
    perf_examples/self_smpl_multi       \
    perf_examples/self_pipe             \
    perf_examples/syst_count            \
    perf_examples/task_cpu              \
    perf_examples/syst_smpl             \
    perf_examples/evt2raw               \
    perf_examples/branch_smpl

if BUILD_PFMLIB_ARCH_X86
perf_examples_list += perf_examples/x86/bts_smpl
endif

if BUILD_PFMLIB_ARCH_I386
perf_examples_list += perf_examples/x86/bts_smpl
endif

if BUILD_RTOP
perf_examples_list += perf_examples/rtop
endif
