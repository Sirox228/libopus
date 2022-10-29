LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := opus

LOCAL_CFLAGS := \
    -DOPUS_BUILD \
    -DVAR_ARRAYS \
    -DCUSTOM_MODES \
    -DFLOAT_APPROX \
    -DCPU_INFO_BY_C \
    -DENABLE_ASSERTIONS \
    -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/opus/celt \
    $(LOCAL_PATH)/opus/include \
    $(LOCAL_PATH)/opus/src/opus_private.h \
    $(LOCAL_PATH)/opus/src/analysis.h \
    $(LOCAL_PATH)/opus/src/mapping_matrix.h \
    $(LOCAL_PATH)/opus/src/mlp.h \
    $(LOCAL_PATH)/opus/ src/tansig_table.h \
    $(LOCAL_PATH)/opus/silk

LOCAL_SRC_FILES := \
    $(LOCAL_PATH)/opus/celt/bands.c \
    $(LOCAL_PATH)/opus/celt/celt.c \
    $(LOCAL_PATH)/opus/celt/celt_encoder.c \
    $(LOCAL_PATH)/opus/celt/celt_decoder.c \
    $(LOCAL_PATH)/opus/celt/cwrs.c \
    $(LOCAL_PATH)/opus/celt/entcode.c \
    $(LOCAL_PATH)/opus/celt/entdec.c \
    $(LOCAL_PATH)/opus/celt/entenc.c \
    $(LOCAL_PATH)/opus/celt/kiss_fft.c \
    $(LOCAL_PATH)/opus/celt/laplace.c \
    $(LOCAL_PATH)/opus/celt/mathops.c \
    $(LOCAL_PATH)/opus/celt/mdct.c \
    $(LOCAL_PATH)/opus/celt/modes.c \
    $(LOCAL_PATH)/opus/celt/pitch.c \
    $(LOCAL_PATH)/opus/celt/celt_lpc.c \
    $(LOCAL_PATH)/opus/celt/quant_bands.c \
    $(LOCAL_PATH)/opus/celt/rate.c \
    $(LOCAL_PATH)/opus/celt/vq.c \
    $(LOCAL_PATH)/opus/src/opus.c \
    $(LOCAL_PATH)/opus/src/opus_decoder.c \
    $(LOCAL_PATH)/opus/src/opus_encoder.c \
    $(LOCAL_PATH)/opus/src/opus_multistream.c \
    $(LOCAL_PATH)/opus/src/opus_multistream_encoder.c \
    $(LOCAL_PATH)/opus/src/opus_multistream_decoder.c \
    $(LOCAL_PATH)/opus/src/repacketizer.c \
    $(LOCAL_PATH)/opus/src/opus_projection_encoder.c \
    $(LOCAL_PATH)/opus/src/opus_projection_decoder.c \
    $(LOCAL_PATH)/opus/src/mapping_matrix.c \
    $(LOCAL_PATH)/opus/src/analysis.c \
    $(LOCAL_PATH)/opus/src/mlp.c \
    $(LOCAL_PATH)/opus/src/mlp_data.c \
    $(LOCAL_PATH)/opus/silk/CNG.c \
    $(LOCAL_PATH)/opus/silk/code_signs.c \
    $(LOCAL_PATH)/opus/silk/init_decoder.c \
    $(LOCAL_PATH)/opus/silk/decode_core.c \
    $(LOCAL_PATH)/opus/silk/decode_frame.c \
    $(LOCAL_PATH)/opus/silk/decode_parameters.c \
    $(LOCAL_PATH)/opus/silk/decode_indices.c \
    $(LOCAL_PATH)/opus/silk/decode_pulses.c \
    $(LOCAL_PATH)/opus/silk/decoder_set_fs.c \
    $(LOCAL_PATH)/opus/silk/dec_API.c \
    $(LOCAL_PATH)/opus/silk/enc_API.c \
    $(LOCAL_PATH)/opus/silk/encode_indices.c \
    $(LOCAL_PATH)/opus/silk/encode_pulses.c \
    $(LOCAL_PATH)/opus/silk/gain_quant.c \
    $(LOCAL_PATH)/opus/silk/interpolate.c \
    $(LOCAL_PATH)/opus/silk/LP_variable_cutoff.c \
    $(LOCAL_PATH)/opus/silk/NLSF_decode.c \
    $(LOCAL_PATH)/opus/silk/NSQ.c \
    $(LOCAL_PATH)/opus/silk/NSQ_del_dec.c \
    $(LOCAL_PATH)/opus/silk/PLC.c \
    $(LOCAL_PATH)/opus/silk/shell_coder.c \
    $(LOCAL_PATH)/opus/silk/tables_gain.c \
    $(LOCAL_PATH)/opus/silk/tables_LTP.c \
    $(LOCAL_PATH)/opus/silk/tables_NLSF_CB_NB_MB.c \
    $(LOCAL_PATH)/opus/silk/tables_NLSF_CB_WB.c \
    $(LOCAL_PATH)/opus/silk/tables_other.c \
    $(LOCAL_PATH)/opus/silk/tables_pitch_lag.c \
    $(LOCAL_PATH)/opus/silk/tables_pulses_per_block.c \
    $(LOCAL_PATH)/opus/silk/VAD.c \
    $(LOCAL_PATH)/opus/silk/control_audio_bandwidth.c \
    $(LOCAL_PATH)/opus/silk/quant_LTP_gains.c \
    $(LOCAL_PATH)/opus/silk/VQ_WMat_EC.c \
    $(LOCAL_PATH)/opus/silk/HP_variable_cutoff.c \
    $(LOCAL_PATH)/opus/silk/NLSF_encode.c \
    $(LOCAL_PATH)/opus/silk/NLSF_VQ.c \
    $(LOCAL_PATH)/opus/silk/NLSF_unpack.c \
    $(LOCAL_PATH)/opus/silk/NLSF_del_dec_quant.c \
    $(LOCAL_PATH)/opus/silk/process_NLSFs.c \
    $(LOCAL_PATH)/opus/silk/stereo_LR_to_MS.c \
    $(LOCAL_PATH)/opus/silk/stereo_MS_to_LR.c \
    $(LOCAL_PATH)/opus/silk/check_control_input.c \
    $(LOCAL_PATH)/opus/silk/control_SNR.c \
    $(LOCAL_PATH)/opus/silk/init_encoder.c \
    $(LOCAL_PATH)/opus/silk/control_codec.c \
    $(LOCAL_PATH)/opus/silk/A2NLSF.c \
    $(LOCAL_PATH)/opus/silk/ana_filt_bank_1.c \
    $(LOCAL_PATH)/opus/silk/biquad_alt.c \
    $(LOCAL_PATH)/opus/silk/bwexpander_32.c \
    $(LOCAL_PATH)/opus/silk/bwexpander.c \
    $(LOCAL_PATH)/opus/silk/debug.c \
    $(LOCAL_PATH)/opus/silk/decode_pitch.c \
    $(LOCAL_PATH)/opus/silk/inner_prod_aligned.c \
    $(LOCAL_PATH)/opus/silk/lin2log.c \
    $(LOCAL_PATH)/opus/silk/log2lin.c \
    $(LOCAL_PATH)/opus/silk/LPC_analysis_filter.c \
    $(LOCAL_PATH)/opus/silk/LPC_inv_pred_gain.c \
    $(LOCAL_PATH)/opus/silk/table_LSF_cos.c \
    $(LOCAL_PATH)/opus/silk/NLSF2A.c \
    $(LOCAL_PATH)/opus/silk/NLSF_stabilize.c \
    $(LOCAL_PATH)/opus/silk/NLSF_VQ_weights_laroia.c \
    $(LOCAL_PATH)/opus/silk/pitch_est_tables.c \
    $(LOCAL_PATH)/opus/silk/resampler.c \
    $(LOCAL_PATH)/opus/silk/resampler_down2_3.c \
    $(LOCAL_PATH)/opus/silk/resampler_down2.c \
    $(LOCAL_PATH)/opus/silk/resampler_private_AR2.c \
    $(LOCAL_PATH)/opus/silk/resampler_private_down_FIR.c \
    $(LOCAL_PATH)/opus/silk/resampler_private_IIR_FIR.c \
    $(LOCAL_PATH)/opus/silk/resampler_private_up2_HQ.c \
    $(LOCAL_PATH)/opus/silk/resampler_rom.c \
    $(LOCAL_PATH)/opus/silk/sigm_Q15.c \
    $(LOCAL_PATH)/opus/silk/sort.c \
    $(LOCAL_PATH)/opus/silk/sum_sqr_shift.c \
    $(LOCAL_PATH)/opus/silk/stereo_decode_pred.c \
    $(LOCAL_PATH)/opus/silk/stereo_encode_pred.c \
    $(LOCAL_PATH)/opus/silk/stereo_find_predictor.c \
    $(LOCAL_PATH)/opus/silk/stereo_quant_pred.c \
    $(LOCAL_PATH)/opus/silk/LPC_fit.c \
    $(LOCAL_PATH)/opus/silk/float/apply_sine_window_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/corrMatrix_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/encode_frame_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/find_LPC_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/find_LTP_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/find_pitch_lags_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/find_pred_coefs_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/LPC_analysis_filter_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/LTP_analysis_filter_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/LTP_scale_ctrl_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/noise_shape_analysis_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/process_gains_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/regularize_correlations_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/residual_energy_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/warped_autocorrelation_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/wrappers_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/autocorrelation_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/burg_modified_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/bwexpander_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/energy_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/inner_product_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/k2a_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/LPC_inv_pred_gain_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/pitch_analysis_core_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/scale_copy_vector_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/scale_vector_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/schur_FLP.c \
    $(LOCAL_PATH)/opus/silk/float/sort_FLP.c

ifeq ($(strip $(TARGET_ARCH)),arm)
    LOCAL_SDK_VERSION := 19
    LOCAL_CFLAGS += \
        -DOPUS_ARM_ASM \
        -DOPUS_ARM_INLINE_NEON \
        -DOPUS_ARM_MAY_HAVE_NEON \
        -DOPUS_ARM_PRESUME_NEON \
        -mfpu=neon \
        -DOPUS_ARM_MAY_HAVE_NEON_INTR \
        -DOPUS_ARM_PRESUME_NEON_INTR \
        -DCPU_ARM \
        -DOPUS_HAVE_RTCD \
        -DOPUS_CHECK_ASM
    LOCAL_SRC_FILES += \
        $(LOCAL_PATH)/opus/celt/arm/armcpu.c \
        $(LOCAL_PATH)/opus/celt/arm/arm_celt_map.c \
        $(LOCAL_PATH)/opus/celt/arm/celt_pitch_xcorr_arm.s \
        $(LOCAL_PATH)/opus/celt/arm/armopts.s \
        $(LOCAL_PATH)/opus/celt/arm/celt_neon_intr.c \
        $(LOCAL_PATH)/opus/celt/arm/pitch_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/arm_silk_map.c \
        $(LOCAL_PATH)/opus/silk/arm/biquad_alt_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/LPC_inv_pred_gain_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/NSQ_del_dec_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/NSQ_neon.c \
        $(LOCAL_PATH)/opus/silk/fixed/arm/warped_autocorrelation_FIX_neon_intr.c
endif

ifeq ($(strip $(TARGET_ARCH)),x86)
    LOCAL_SDK_VERSION := 19
    LOCAL_CFLAGS += \
        -DCPU_X86
endif

ifeq ($(strip $(TARGET_ARCH)),arm64)
    LOCAL_SDK_VERSION := 19
    LOCAL_CFLAGS += \
        -DOPUS_ARM_ASM \
        -DOPUS_ARM_INLINE_NEON \
        -DOPUS_ARM_MAY_HAVE_NEON \
        -DOPUS_ARM_PRESUME_NEON \
        -mfpu=neon \
        -DOPUS_ARM_MAY_HAVE_NEON_INTR \
        -DOPUS_ARM_PRESUME_AARCH64_NEON_INTR \
        -DCPU_ARM \
        -DOPUS_HAVE_RTCD \
        -DOPUS_CHECK_ASM
    LOCAL_SRC_FILES += \
        $(LOCAL_PATH)/opus/celt/arm/armcpu.c \
        $(LOCAL_PATH)/opus/celt/arm/arm_celt_map.c \
        $(LOCAL_PATH)/opus/celt/arm/celt_pitch_xcorr_arm.s \
        $(LOCAL_PATH)/opus/celt/arm/armopts.s \
        $(LOCAL_PATH)/opus/celt/arm/celt_neon_intr.c \
        $(LOCAL_PATH)/opus/celt/arm/pitch_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/arm_silk_map.c \
        $(LOCAL_PATH)/opus/silk/arm/biquad_alt_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/LPC_inv_pred_gain_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/NSQ_del_dec_neon_intr.c \
        $(LOCAL_PATH)/opus/silk/arm/NSQ_neon.c \
        $(LOCAL_PATH)/opus/silk/fixed/arm/warped_autocorrelation_FIX_neon_intr.c
endif

ifeq ($(strip $(TARGET_ARCH)),x86_64)
    LOCAL_SDK_VERSION := 19
    LOCAL_CFLAGS += \
        -DCPU_X86
endif

include $(BUILD_STATIC_LIBRARY)
