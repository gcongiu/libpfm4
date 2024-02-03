##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

AM_CPPFLAGS += -D_REENTRANT -I$(topsrc_dir)/lib
AM_CFLAGS   += -fvisibility=hidden

# Common headers and sources
noinst_HEADERS += lib/pfmlib_priv.h
pfm_sources    += lib/pfmlib_common.c

# Linux specific sources
if BUILD_PFMLIB_OS_LINUX
noinst_HEADERS += lib/events/perf_events.h

pfm_sources +=                                  \
    lib/pfmlib_perf_event_pmu.c                 \
    lib/pfmlib_perf_event.c                     \
    lib/pfmlib_perf_event_raw.c
endif # end of BUILD_PFMLIB_OS_LINUX

if BUILD_PFMLIB_ARCH_IA64
noinst_HEADERS +=                               \
    lib/pfmlib_ia64_priv.h                      \
    lib/events/itanium_events.h                 \
    lib/events/itanium2_events.h                \
    lib/events/montecito_events.h

pfm_sources +=                                  \
    #lib/pfmlib_gen_ia64.c                      \
    #lib/pfmlib_itanium.c                       \
    #lib/pfmlib_itanium2.c                      \
    #lib/pfmlib_montecito.c
endif # end of BUILD_PFMLIB_ARCH_IA64

if BUILD_PFMLIB_ARCH_X86
noinst_HEADERS +=                               \
    lib/pfmlib_intel_x86_priv.h                 \
    lib/pfmlib_amd64_priv.h                     \
    lib/events/amd64_events_k7.h                \
    lib/events/amd64_events_k8.h                \
    lib/events/amd64_events_fam10h.h            \
    lib/events/amd64_events_fam11h.h            \
    lib/events/amd64_events_fam12h.h            \
    lib/events/amd64_events_fam14h.h            \
    lib/events/amd64_events_fam15h.h            \
    lib/events/amd64_events_fam17h_zen1.h       \
    lib/events/amd64_events_fam17h_zen2.h       \
    lib/events/amd64_events_fam19h_zen3.h       \
    lib/events/amd64_events_fam19h_zen4.h       \
    lib/events/amd64_events_fam19h_zen3_l3.h    \
    lib/events/amd64_events_fam16h.h            \
    lib/events/intel_p6_events.h                \
    lib/events/intel_netburst_events.h          \
    lib/events/intel_x86_arch_events.h          \
    lib/events/intel_coreduo_events.h           \
    lib/events/intel_core_events.h              \
    lib/events/intel_atom_events.h              \
    lib/events/intel_nhm_events.h               \
    lib/events/intel_nhm_unc_events.h           \
    lib/events/intel_wsm_events.h               \
    lib/events/intel_wsm_unc_events.h           \
    lib/events/intel_snb_events.h               \
    lib/events/intel_snb_unc_events.h           \
    lib/events/intel_ivb_events.h               \
    lib/events/intel_hsw_events.h               \
    lib/events/intel_bdw_events.h               \
    lib/events/intel_skl_events.h               \
    lib/events/intel_glm_events.h               \
    lib/events/intel_icl_events.h               \
    lib/events/intel_spr_events.h               \
    lib/pfmlib_intel_snbep_unc_priv.h           \
    lib/events/intel_snbep_unc_cbo_events.h     \
    lib/events/intel_snbep_unc_ha_events.h      \
    lib/events/intel_snbep_unc_imc_events.h     \
    lib/events/intel_snbep_unc_pcu_events.h     \
    lib/events/intel_snbep_unc_qpi_events.h     \
    lib/events/intel_snbep_unc_ubo_events.h     \
    lib/events/intel_snbep_unc_r2pcie_events.h  \
    lib/events/intel_snbep_unc_r3qpi_events.h   \
    lib/events/intel_tmt_events.h               \
    lib/events/intel_knc_events.h               \
    lib/events/intel_knl_events.h               \
    lib/events/intel_ivbep_unc_cbo_events.h     \
    lib/events/intel_ivbep_unc_ha_events.h      \
    lib/events/intel_ivbep_unc_imc_events.h     \
    lib/events/intel_ivbep_unc_pcu_events.h     \
    lib/events/intel_ivbep_unc_qpi_events.h     \
    lib/events/intel_ivbep_unc_ubo_events.h     \
    lib/events/intel_ivbep_unc_r2pcie_events.h  \
    lib/events/intel_ivbep_unc_r3qpi_events.h   \
    lib/events/intel_ivbep_unc_irp_events.h     \
    lib/events/intel_hswep_unc_cbo_events.h     \
    lib/events/intel_hswep_unc_sbo_events.h     \
    lib/events/intel_hswep_unc_ha_events.h      \
    lib/events/intel_hswep_unc_imc_events.h     \
    lib/events/intel_hswep_unc_pcu_events.h     \
    lib/events/intel_hswep_unc_qpi_events.h     \
    lib/events/intel_hswep_unc_ubo_events.h     \
    lib/events/intel_hswep_unc_r2pcie_events.h  \
    lib/events/intel_hswep_unc_r3qpi_events.h   \
    lib/events/intel_hswep_unc_irp_events.h     \
    lib/events/intel_bdx_unc_cbo_events.h       \
    lib/events/intel_bdx_unc_ubo_events.h       \
    lib/events/intel_bdx_unc_sbo_events.h       \
    lib/events/intel_bdx_unc_ha_events.h        \
    lib/events/intel_bdx_unc_imc_events.h       \
    lib/events/intel_bdx_unc_irp_events.h       \
    lib/events/intel_bdx_unc_pcu_events.h       \
    lib/events/intel_bdx_unc_qpi_events.h       \
    lib/events/intel_bdx_unc_r2pcie_events.h    \
    lib/events/intel_bdx_unc_r3qpi_events.h     \
    lib/events/intel_skx_unc_cha_events.h       \
    lib/events/intel_skx_unc_iio_events.h       \
    lib/events/intel_skx_unc_imc_events.h       \
    lib/events/intel_skx_unc_irp_events.h       \
    lib/events/intel_skx_unc_m2m_events.h       \
    lib/events/intel_skx_unc_m3upi_events.h     \
    lib/events/intel_skx_unc_pcu_events.h       \
    lib/events/intel_skx_unc_ubo_events.h       \
    lib/events/intel_skx_unc_upi_events.h       \
    lib/events/intel_knl_unc_imc_events.h       \
    lib/events/intel_knl_unc_edc_events.h       \
    lib/events/intel_knl_unc_cha_events.h       \
    lib/events/intel_knl_unc_m2pcie_events.h    \
    lib/events/intel_slm_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources +=                                  \
    lib/pfmlib_intel_x86_perf_event.c           \
    lib/pfmlib_amd64_perf_event.c               \
    lib/pfmlib_intel_netburst_perf_event.c      \
    lib/pfmlib_intel_snbep_unc_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources +=                                  \
    lib/pfmlib_amd64.c                          \
    lib/pfmlib_intel_core.c                     \
    lib/pfmlib_intel_x86.c                      \
    lib/pfmlib_intel_x86_arch.c                 \
    lib/pfmlib_intel_atom.c                     \
    lib/pfmlib_intel_nhm_unc.c                  \
    lib/pfmlib_intel_nhm.c                      \
    lib/pfmlib_intel_wsm.c                      \
    lib/pfmlib_intel_snb.c                      \
    lib/pfmlib_intel_snb_unc.c                  \
    lib/pfmlib_intel_ivb.c                      \
    lib/pfmlib_intel_ivb_unc.c                  \
    lib/pfmlib_intel_hsw.c                      \
    lib/pfmlib_intel_bdw.c                      \
    lib/pfmlib_intel_skl.c                      \
    lib/pfmlib_intel_icl.c                      \
    lib/pfmlib_intel_spr.c                      \
    lib/pfmlib_intel_rapl.c                     \
    lib/pfmlib_intel_snbep_unc.c                \
    lib/pfmlib_intel_snbep_unc_cbo.c            \
    lib/pfmlib_intel_snbep_unc_ha.c             \
    lib/pfmlib_intel_snbep_unc_imc.c            \
    lib/pfmlib_intel_snbep_unc_pcu.c            \
    lib/pfmlib_intel_snbep_unc_qpi.c            \
    lib/pfmlib_intel_snbep_unc_ubo.c            \
    lib/pfmlib_intel_snbep_unc_r2pcie.c         \
    lib/pfmlib_intel_snbep_unc_r3qpi.c          \
    lib/pfmlib_intel_ivbep_unc_cbo.c            \
    lib/pfmlib_intel_ivbep_unc_ha.c             \
    lib/pfmlib_intel_ivbep_unc_imc.c            \
    lib/pfmlib_intel_ivbep_unc_pcu.c            \
    lib/pfmlib_intel_ivbep_unc_qpi.c            \
    lib/pfmlib_intel_ivbep_unc_ubo.c            \
    lib/pfmlib_intel_ivbep_unc_r2pcie.c         \
    lib/pfmlib_intel_ivbep_unc_r3qpi.c          \
    lib/pfmlib_intel_ivbep_unc_irp.c            \
    lib/pfmlib_intel_hswep_unc_cbo.c            \
    lib/pfmlib_intel_hswep_unc_ha.c             \
    lib/pfmlib_intel_hswep_unc_imc.c            \
    lib/pfmlib_intel_hswep_unc_pcu.c            \
    lib/pfmlib_intel_hswep_unc_qpi.c            \
    lib/pfmlib_intel_hswep_unc_ubo.c            \
    lib/pfmlib_intel_hswep_unc_r2pcie.c         \
    lib/pfmlib_intel_hswep_unc_r3qpi.c          \
    lib/pfmlib_intel_hswep_unc_irp.c            \
    lib/pfmlib_intel_hswep_unc_sbo.c            \
    lib/pfmlib_intel_bdx_unc_cbo.c              \
    lib/pfmlib_intel_bdx_unc_ubo.c              \
    lib/pfmlib_intel_bdx_unc_sbo.c              \
    lib/pfmlib_intel_bdx_unc_ha.c               \
    lib/pfmlib_intel_bdx_unc_imc.c              \
    lib/pfmlib_intel_bdx_unc_irp.c              \
    lib/pfmlib_intel_bdx_unc_pcu.c              \
    lib/pfmlib_intel_bdx_unc_qpi.c              \
    lib/pfmlib_intel_bdx_unc_r2pcie.c           \
    lib/pfmlib_intel_bdx_unc_r3qpi.c            \
    lib/pfmlib_intel_skx_unc_cha.c              \
    lib/pfmlib_intel_skx_unc_iio.c              \
    lib/pfmlib_intel_skx_unc_imc.c              \
    lib/pfmlib_intel_skx_unc_irp.c              \
    lib/pfmlib_intel_skx_unc_m2m.c              \
    lib/pfmlib_intel_skx_unc_m3upi.c            \
    lib/pfmlib_intel_skx_unc_pcu.c              \
    lib/pfmlib_intel_skx_unc_ubo.c              \
    lib/pfmlib_intel_skx_unc_upi.c              \
    lib/pfmlib_intel_knc.c                      \
    lib/pfmlib_intel_slm.c                      \
    lib/pfmlib_intel_tmt.c                      \
    lib/pfmlib_intel_knl.c                      \
    lib/pfmlib_intel_knl_unc_imc.c              \
    lib/pfmlib_intel_knl_unc_edc.c              \
    lib/pfmlib_intel_knl_unc_cha.c              \
    lib/pfmlib_intel_knl_unc_m2pcie.c           \
    lib/pfmlib_intel_glm.c                      \
    lib/pfmlib_intel_netburst.c                 \
    lib/pfmlib_amd64_k7.c                       \
    lib/pfmlib_amd64_k8.c                       \
    lib/pfmlib_amd64_fam10h.c                   \
    lib/pfmlib_amd64_fam11h.c                   \
    lib/pfmlib_amd64_fam12h.c                   \
    lib/pfmlib_amd64_fam14h.c                   \
    lib/pfmlib_amd64_fam15h.c                   \
    lib/pfmlib_amd64_fam17h.c                   \
    lib/pfmlib_amd64_fam16h.c                   \
    lib/pfmlib_amd64_fam19h.c                   \
    lib/pfmlib_amd64_rapl.c                     \
    lib/pfmlib_amd64_fam19h_l3.c

if BUILD_PFMLIB_ARCH_I386
pfm_sources +=                                  \
    lib/pfmlib_intel_coreduo.c                  \
    lib/pfmlib_intel_p6.c
endif # end of BUILD_PFMLIB_ARCH_I386
endif # end of BUILD_PFMLIB_ARCH_X86

if BUILD_PFMLIB_ARCH_POWERPC
noinst_HEADERS +=                               \
    lib/events/ppc970mp_events.h                \
    lib/events/power4_events.h                  \
    lib/events/power5_events.h                  \
    lib/events/power5+_events.h                 \
    lib/events/power6_events.h                  \
    lib/events/power7_events.h                  \
    lib/events/power8_events.h                  \
    lib/events/power9_events.h                  \
    lib/events/power10_events.h                 \
    lib/events/torrent_events.h                 \
    lib/events/powerpc_nest_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources += lib/pfmlib_powerpc_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources +=                                  \
    lib/pfmlib_powerpc.c                        \
    lib/pfmlib_power4.c                         \
    lib/pfmlib_ppc970.c                         \
    lib/pfmlib_power5.c                         \
    lib/pfmlib_power6.c                         \
    lib/pfmlib_power7.c                         \
    lib/pfmlib_torrent.c                        \
    lib/pfmlib_power8.c                         \
    lib/pfmlib_power9.c                         \
    lib/pfmlib_power10.c                        \
    lib/pfmlib_powerpc_nest.c
endif # end of BUILD_PFMLIB_ARCH_POWERPC

if BUILD_PFMLIB_ARCH_S390X
noinst_HEADERS +=                               \
    lib/pfmlib_s390x_priv.h                     \
    lib/events/s390x_cpumf_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources += lib/pfmlib_s390x_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources += lib/pfmlib_s390x_cpumf.c
endif # end of BUILD_PFMLIB_ARCH_S390X

if BUILD_PFMLIB_ARCH_SPARC
noinst_HEADERS +=                               \
    lib/events/sparc_ultra12_events.h           \
    lib/events/sparc_ultra3_events.h            \
    lib/events/sparc_ultra3plus_events.h        \
    lib/events/sparc_ultra3i_events.h           \
    lib/events/sparc_ultra4plus_events.h        \
    lib/events/sparc_niagara1_events.h          \
    lib/events/sparc_niagara2_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources += lib/pfmlib_sparc_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources +=                                  \
    lib/pfmlib_sparc.c                          \
    lib/pfmlib_sparc_ultra12.c                  \
    lib/pfmlib_sparc_ultra3.c                   \
    lib/pfmlib_sparc_ultra4.c                   \
    lib/pfmlib_sparc_niagara.c
endif # end of BUILD_PFMLIB_ARCH_SPARC

if BUILD_PFMLIB_ARCH_ARM
noinst_HEADERS +=                               \
    lib/pfmlib_arm_priv.h                       \
    lib/events/arm_cortex_a7_events.h           \
    lib/events/arm_cortex_a8_events.h           \
    lib/events/arm_cortex_a9_events.h           \
    lib/events/arm_cortex_a15_events.h          \
    lib/events/arm_cortex_a57_events.h          \
    lib/events/arm_cortex_a53_events.h          \
    lib/events/arm_xgene_events.h               \
    lib/events/arm_cavium_tx2_events.h          \
    lib/events/arm_marvell_tx2_unc_events.h     \
    lib/events/arm_neoverse_n1_events.h         \
    lib/events/arm_neoverse_n2_events.h         \
    lib/events/arm_hisilicon_kunpeng_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources += lib/pfmlib_arm_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources +=                                  \
    lib/pfmlib_arm.c                            \
    lib/pfmlib_arm_armv7_pmuv1.c                \
    lib/pfmlib_arm_armv6.c                      \
    lib/pfmlib_arm_armv8.c                      \
    lib/pfmlib_tx2_unc_perf_event.c
endif # end of BUILD_PFMLIB_ARCH_ARM

if BUILD_PFMLIB_ARCH_ARM64
noinst_HEADERS +=                               \
    lib/events/arm_cortex_a57_events.h          \
    lib/events/arm_cortex_a53_events.h          \
    lib/events/arm_xgene_events.h               \
    lib/events/arm_cavium_tx2_events.h          \
    lib/events/arm_marvell_tx2_unc_events.h     \
    lib/events/arm_fujitsu_a64fx_events.h       \
    lib/events/arm_neoverse_n1_events.h         \
    lib/events/arm_neoverse_n2_events.h         \
    lib/events/arm_hisilicon_kunpeng_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources += lib/pfmlib_arm_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources +=                                  \
    lib/pfmlib_arm.c                            \
    lib/pfmlib_arm_armv8.c                      \
    lib/pfmlib_tx2_unc_perf_event.c
endif # end of BUILD_PFMLIB_ARCH_ARM64

if BUILD_PFMLIB_ARCH_MIPS
noinst_HEADERS += lib/events/mips_74k_events.h

if BUILD_PFMLIB_OS_LINUX
pfm_sources += lib/pfmlib_mips_perf_event.c
endif # end of BUILD_PFMLIB_OS_LINUX

pfm_sources +=                                  \
    lib/pfmlib_mips.c                           \
    lib/pfmlib_mips_74k.c
endif # end of BUILD_PFMLIB_ARCH_MIPS

if BUILD_PFMLIB_ARCH_CELL
cell_includes = lib/events/cell_events.h

pfm_sources +=                                  \
    #lib/pfmlib_cell.c
endif # end of BUILD_PFMLIB_ARCH_CELL
