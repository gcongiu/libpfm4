##
## Copyright (C) by Hewlett-Packard Development Company, L.P.
##     See copyright in top level directory
##

man_MANS +=                                   \
    docs/man3/libpfm.3                        \
    docs/man3/pfm_find_event.3                \
    docs/man3/pfm_get_event_attr_info.3       \
    docs/man3/pfm_get_event_info.3            \
    docs/man3/pfm_get_event_encoding.3        \
    docs/man3/pfm_get_event_next.3            \
    docs/man3/pfm_get_pmu_info.3              \
    docs/man3/pfm_get_os_event_encoding.3     \
    docs/man3/pfm_get_version.3               \
    docs/man3/pfm_initialize.3                \
    docs/man3/pfm_terminate.3                 \
    docs/man3/pfm_strerror.3

if BUILD_PFMLIB_ARCH_X86
man_MANS +=                                   \
    docs/man3/libpfm_intel_core.3             \
    docs/man3/libpfm_intel_x86_arch.3         \
    docs/man3/libpfm_amd64.3                  \
    docs/man3/libpfm_amd64_k7.3               \
    docs/man3/libpfm_amd64_k8.3               \
    docs/man3/libpfm_amd64_fam10h.3           \
    docs/man3/libpfm_amd64_fam15h.3           \
    docs/man3/libpfm_amd64_fam16h.3           \
    docs/man3/libpfm_amd64_fam17h.3           \
    docs/man3/libpfm_amd64_fam17h_zen2.3      \
    docs/man3/libpfm_amd64_fam19h_zen3.3      \
    docs/man3/libpfm_amd64_fam19h_zen4.3      \
    docs/man3/libpfm_amd64_fam19h_zen3_l3.3   \
    docs/man3/libpfm_intel_atom.3             \
    docs/man3/libpfm_intel_nhm.3              \
    docs/man3/libpfm_intel_nhm_unc.3          \
    docs/man3/libpfm_intel_wsm.3              \
    docs/man3/libpfm_intel_wsm_unc.3          \
    docs/man3/libpfm_intel_snb.3              \
    docs/man3/libpfm_intel_snb_unc.3          \
    docs/man3/libpfm_intel_ivb.3              \
    docs/man3/libpfm_intel_ivb_unc.3          \
    docs/man3/libpfm_intel_hsw.3              \
    docs/man3/libpfm_intel_bdw.3              \
    docs/man3/libpfm_intel_rapl.3             \
    docs/man3/libpfm_intel_slm.3              \
    docs/man3/libpfm_intel_tmt.3              \
    docs/man3/libpfm_intel_skl.3              \
    docs/man3/libpfm_intel_icl.3              \
    docs/man3/libpfm_intel_icx.3              \
    docs/man3/libpfm_intel_spr.3              \
    docs/man3/libpfm_intel_glm.3              \
    docs/man3/libpfm_intel_knl.3              \
    docs/man3/libpfm_intel_knm.3              \
    docs/man3/libpfm_intel_snbep_unc_cbo.3    \
    docs/man3/libpfm_intel_snbep_unc_ha.3     \
    docs/man3/libpfm_intel_snbep_unc_imc.3    \
    docs/man3/libpfm_intel_snbep_unc_pcu.3    \
    docs/man3/libpfm_intel_snbep_unc_qpi.3    \
    docs/man3/libpfm_intel_snbep_unc_ubo.3    \
    docs/man3/libpfm_intel_snbep_unc_r2pcie.3 \
    docs/man3/libpfm_intel_snbep_unc_r3qpi.3  \
    docs/man3/libpfm_intel_ivbep_unc_cbo.3    \
    docs/man3/libpfm_intel_ivbep_unc_ha.3     \
    docs/man3/libpfm_intel_ivbep_unc_imc.3    \
    docs/man3/libpfm_intel_ivbep_unc_pcu.3    \
    docs/man3/libpfm_intel_ivbep_unc_qpi.3    \
    docs/man3/libpfm_intel_ivbep_unc_ubo.3    \
    docs/man3/libpfm_intel_ivbep_unc_r2pcie.3 \
    docs/man3/libpfm_intel_ivbep_unc_r3qpi.3  \
    docs/man3/libpfm_intel_ivbep_unc_irp.3    \
    docs/man3/libpfm_intel_knc.3              \
    docs/man3/libpfm_intel_hswep_unc_cbo.3    \
    docs/man3/libpfm_intel_hswep_unc_ha.3     \
    docs/man3/libpfm_intel_hswep_unc_imc.3    \
    docs/man3/libpfm_intel_hswep_unc_irp.3    \
    docs/man3/libpfm_intel_hswep_unc_pcu.3    \
    docs/man3/libpfm_intel_hswep_unc_qpi.3    \
    docs/man3/libpfm_intel_hswep_unc_r2pcie.3 \
    docs/man3/libpfm_intel_hswep_unc_r3qpi.3  \
    docs/man3/libpfm_intel_hswep_unc_sbo.3    \
    docs/man3/libpfm_intel_hswep_unc_ubo.3    \
    docs/man3/libpfm_intel_bdx_unc_cbo.3      \
    docs/man3/libpfm_intel_bdx_unc_ha.3       \
    docs/man3/libpfm_intel_bdx_unc_imc.3      \
    docs/man3/libpfm_intel_bdx_unc_irp.3      \
    docs/man3/libpfm_intel_bdx_unc_pcu.3      \
    docs/man3/libpfm_intel_bdx_unc_qpi.3      \
    docs/man3/libpfm_intel_bdx_unc_r2pcie.3   \
    docs/man3/libpfm_intel_bdx_unc_r3qpi.3    \
    docs/man3/libpfm_intel_bdx_unc_sbo.3      \
    docs/man3/libpfm_intel_bdx_unc_ubo.3      \
    docs/man3/libpfm_intel_skx_unc_cha.3      \
    docs/man3/libpfm_intel_skx_unc_imc.3      \
    docs/man3/libpfm_intel_skx_unc_irp.3      \
    docs/man3/libpfm_intel_skx_unc_m2m.3      \
    docs/man3/libpfm_intel_skx_unc_m3upi.3    \
    docs/man3/libpfm_intel_skx_unc_pcu.3      \
    docs/man3/libpfm_intel_skx_unc_ubo.3      \
    docs/man3/libpfm_intel_skx_unc_upi.3      \
    docs/man3/libpfm_intel_spr.3
endif # end of BUILD_PFMLIB_ARCH_X86

if BUILD_PFMLIB_ARCH_I386
man_MANS +=                                   \
    docs/man3/libpfm_intel_p6.3               \
    docs/man3/libpfm_intel_coreduo.3
endif # end of BUILD_PFMLIB_ARCH_I386

if BUILD_PFMLIB_ARCH_ARM
man_MANS +=                                   \
    docs/man3/libpfm_arm_xgene.3              \
    docs/man3/libpfm_arm_ac7.3                \
    docs/man3/libpfm_arm_ac57.3               \
    docs/man3/libpfm_arm_ac53.3               \
    docs/man3/libpfm_arm_ac15.3               \
    docs/man3/libpfm_arm_ac8.3                \
    docs/man3/libpfm_arm_ac9.3                \
    docs/man3/libpfm_arm_qcom_krait.3         \
    docs/man3/libpfm_arm_neoverse_n1.3        \
    docs/man3/libpfm_arm_neoverse_n2.3
endif # end of BUILD_PFMLIB_ARCH_ARM

if BUILD_PFMLIB_ARCH_ARM64
man_MANS +=                                   \
    docs/man3/libpfm_arm_xgene.3              \
    docs/man3/libpfm_arm_ac57.3               \
    docs/man3/libpfm_arm_ac53.3               \
    docs/man3/libpfm_arm_a64fx.3              \
    docs/man3/libpfm_arm_neoverse_n2.3
endif # end of BUILD_PFMLIB_ARCH_ARM64

if BUILD_PFMLIB_ARCH_MIPS
man_MANS += docs/man3/libpfm_mips_74k.3
endif # end of BUILD_PFMLIB_ARCH_MIPS

if BUILD_PFMLIB_OS_LINUX
man_MANS +=                                   \
    docs/man3/pfm_get_perf_event_encoding.3   \
    docs/man3/libpfm_perf_event_raw.3
endif
