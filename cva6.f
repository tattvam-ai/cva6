# This script was generated automatically by bender.
if [ info exists search_path ] {
    set search_path_initial $search_path
} else {
    set search_path_initial {}
}
set ROOT "/var/tmp/designs/cva6"

set search_path $search_path_initial
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-cc24c124b7267269/src/rtl/tc_sram.sv" \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-cc24c124b7267269/src/rtl/tc_sram_impl.sv" \
    ]

set search_path $search_path_initial
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-cc24c124b7267269/src/rtl/tc_clk.sv" \
    ]

set search_path $search_path_initial
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-cc24c124b7267269/src/deprecated/pulp_clock_gating_async.sv" \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-cc24c124b7267269/src/deprecated/cluster_clk_cells.sv" \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-cc24c124b7267269/src/deprecated/pulp_clk_cells.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/binary_to_gray.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cb_filter_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cc_onehot.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_reset_ctrlr_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cf_math_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/clk_int_div.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/credit_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/delta_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/ecc_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/edge_propagator_tx.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/exp_backoff.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/fifo_v3.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/gray_to_binary.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/heaviside.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/isochronous_4phase_handshake.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/isochronous_spill_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/lfsr.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/lfsr_16bit.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/lfsr_8bit.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/lossy_valid_to_stream.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/mv_filter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/onehot_to_bin.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/plru_tree.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/passthrough_stream_fifo.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/popcount.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/ring_buffer.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/rr_arb_tree.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/rstgen_bypass.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/serial_deglitch.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/shift_reg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/shift_reg_gated.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/spill_register_flushable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_demux.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_filter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_fork.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_intf.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_join_dynamic.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_mux.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_throttle.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/sub_per_hash.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/sync.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/sync_wedge.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/unread.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/read.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/addr_decode_dync.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/boxcar.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_2phase.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_4phase.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/clk_int_div_static.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/trip_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/addr_decode.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/addr_decode_napot.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/multiaddr_decode.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cb_filter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_fifo_2phase.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/clk_mux_glitch_free.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/ecc_decode.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/ecc_encode.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/edge_detect.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/lzc.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/max_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/rstgen.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/spill_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_delay.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_fifo.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_fork_dynamic.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_join.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_reset_ctrlr.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_fifo_gray.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/fall_through_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/id_queue.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_to_mem.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_arbiter_flushable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_fifo_optimal_wrap.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_xbar.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_fifo_gray_clearable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/cdc_2phase_clearable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/mem_to_banks_detailed.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_arbiter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/stream_omega_net.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/mem_to_banks.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/clock_divider_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/clk_div.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/find_first_one.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/generic_LFSR_8bit.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/generic_fifo.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/prioarbiter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/pulp_sync.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/pulp_sync_wedge.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/rrarbiter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/clock_divider.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/fifo_v2.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/deprecated/fifo_v1.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/edge_propagator_ack.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/edge_propagator.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/src/edge_propagator_rx.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/defs_div_sqrt_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/iteration_div_sqrt_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/control_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/norm_div_sqrt_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/preprocess_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/nrbd_nrsc_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/div_sqrt_top_mvp.sv" \
        "$ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dd98d4eaba0b805e/hdl/div_sqrt_mvp_wrapper.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_pkg.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_intf.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_atop_filter.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_burst_splitter.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_cdc_dst.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_cdc_src.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_cut.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_delayer.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_demux.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_dw_downsizer.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_dw_upsizer.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_id_remap.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_id_prepend.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_isolate.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_join.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_demux.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_join.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_mailbox.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_mux.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_regs.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_to_apb.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_to_axi.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_modify_address.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_mux.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_serializer.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_cdc.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_err_slv.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_dw_converter.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_id_serialize.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_multicut.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_to_axi_lite.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_iw_converter.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_lite_xbar.sv" \
        "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/src/axi_xbar.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_pkg.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_cast_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_classifier.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/clk/rtl/gated_clk_cell.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_ctrl.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_ff1.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_pack_single.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_prepare.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_round_single.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_special.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_srt_single.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fdsu/rtl/pa_fdsu_top.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fpu/rtl/pa_fpu_dp.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fpu/rtl/pa_fpu_frbus.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/opene906/E906_RTL_FACTORY/gen_rtl/fpu/rtl/pa_fpu_src_type.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_ctrl.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_double.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_ff1.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_pack.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_prepare.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_round.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_scalar_dp.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_srt_radix16_bound_table.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_srt_radix16_with_sqrt.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_srt.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/vendor/openc910/C910_RTL_FACTORY/gen_rtl/vfdsu/rtl/ct_vfdsu_top.v" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_divsqrt_th_32.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_divsqrt_th_64_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_divsqrt_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_fma.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_fma_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_noncomp.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_opgroup_block.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_opgroup_fmt_slice.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_opgroup_multifmt_slice.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_rounding.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-e0f7063a95eee5e4/src/fpnew_top.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/core/include/config_pkg.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/core/include/cv64a6_imafdc_sv39_config_pkg.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/core/include/riscv_pkg.sv" \
        "$ROOT/core/include/ariane_pkg.sv" \
        "$ROOT/core/include/build_config_pkg.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/core/cva6_accel_first_pass_decoder_stub.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/core/cva6_mmu/cva6_tlb.sv" \
        "$ROOT/core/cva6_mmu/cva6_shared_tlb.sv" \
        "$ROOT/core/cva6_mmu/cva6_mmu.sv" \
        "$ROOT/core/cva6_mmu/cva6_ptw.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/core/include/wt_cache_pkg.sv" \
        "$ROOT/core/include/std_cache_pkg.sv" \
        "$ROOT/core/include/aes_pkg.sv" \
        "$ROOT/core/cvxif_example/include/cvxif_instr_pkg.sv" \
        "$ROOT/core/cvxif_fu.sv" \
        "$ROOT/core/cvxif_issue_register_commit_if_driver.sv" \
        "$ROOT/core/cvxif_compressed_if_driver.sv" \
        "$ROOT/core/cvxif_example/cvxif_example_coprocessor.sv" \
        "$ROOT/core/cvxif_example/instr_decoder.sv" \
        "$ROOT/core/cva6_rvfi_probes.sv" \
        "$ROOT/core/cva6_fifo_v3.sv" \
        "$ROOT/core/cva6.sv" \
        "$ROOT/core/aes.sv" \
        "$ROOT/core/alu.sv" \
        "$ROOT/core/alu_wrapper.sv" \
        "$ROOT/core/fpu_wrap.sv" \
        "$ROOT/core/branch_unit.sv" \
        "$ROOT/core/compressed_decoder.sv" \
        "$ROOT/core/controller.sv" \
        "$ROOT/core/csr_buffer.sv" \
        "$ROOT/core/csr_regfile.sv" \
        "$ROOT/core/decoder.sv" \
        "$ROOT/core/ex_stage.sv" \
        "$ROOT/core/acc_dispatcher.sv" \
        "$ROOT/core/instr_realign.sv" \
        "$ROOT/core/id_stage.sv" \
        "$ROOT/core/issue_read_operands.sv" \
        "$ROOT/core/issue_stage.sv" \
        "$ROOT/core/load_unit.sv" \
        "$ROOT/core/load_store_unit.sv" \
        "$ROOT/core/lsu_bypass.sv" \
        "$ROOT/core/mult.sv" \
        "$ROOT/core/multiplier.sv" \
        "$ROOT/core/serdiv.sv" \
        "$ROOT/core/perf_counters.sv" \
        "$ROOT/core/ariane_regfile_ff.sv" \
        "$ROOT/core/ariane_regfile_fpga.sv" \
        "$ROOT/core/scoreboard.sv" \
        "$ROOT/core/raw_checker.sv" \
        "$ROOT/core/store_buffer.sv" \
        "$ROOT/core/amo_buffer.sv" \
        "$ROOT/core/store_unit.sv" \
        "$ROOT/core/commit_stage.sv" \
        "$ROOT/core/axi_shim.sv" \
        "$ROOT/core/frontend/btb.sv" \
        "$ROOT/core/frontend/bht.sv" \
        "$ROOT/core/frontend/bht2lvl.sv" \
        "$ROOT/core/frontend/ras.sv" \
        "$ROOT/core/frontend/instr_scan.sv" \
        "$ROOT/core/frontend/instr_queue.sv" \
        "$ROOT/core/frontend/frontend.sv" \
        "$ROOT/core/cache_subsystem/wt_dcache_ctrl.sv" \
        "$ROOT/core/cache_subsystem/wt_dcache_mem.sv" \
        "$ROOT/core/cache_subsystem/wt_dcache_missunit.sv" \
        "$ROOT/core/cache_subsystem/wt_dcache_wbuffer.sv" \
        "$ROOT/core/cache_subsystem/wt_dcache.sv" \
        "$ROOT/core/cache_subsystem/wt_cache_subsystem.sv" \
        "$ROOT/core/cache_subsystem/wt_axi_adapter.sv" \
        "$ROOT/core/cache_subsystem/cva6_icache.sv" \
        "$ROOT/core/cache_subsystem/tag_cmp.sv" \
        "$ROOT/core/cache_subsystem/cva6_icache_axi_wrapper.sv" \
        "$ROOT/core/cache_subsystem/axi_adapter.sv" \
        "$ROOT/core/cache_subsystem/miss_handler.sv" \
        "$ROOT/core/cache_subsystem/cache_ctrl.sv" \
        "$ROOT/core/cache_subsystem/std_nbdcache.sv" \
        "$ROOT/core/cache_subsystem/std_cache_subsystem.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_to_axi_read.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_to_axi_write.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_decoder.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wmask.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wmask_1rw.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_resize.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_pkg.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_arb.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_wrapper.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_plru.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_random.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/hpdcache_flush.sv" \
        "$ROOT/core/cache_subsystem/cva6_hpdcache_if_adapter.sv" \
        "$ROOT/core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv" \
        "$ROOT/core/cache_subsystem/cva6_hpdcache_subsystem.sv" \
        "$ROOT/core/cache_subsystem/cva6_hpdcache_wrapper.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_1rw.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_wbyteenable_1rw.sv" \
        "$ROOT/core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_wmask_1rw.sv" \
        "$ROOT/core/pmp/src/pmp.sv" \
        "$ROOT/core/pmp/src/pmp_entry.sv" \
        "$ROOT/core/pmp/src/pmp_data_if.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/common/local/util"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/common/local/util/sram.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-f14341c32cf56c49/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-7e395bb92335c3c4/include"
lappend search_path "$ROOT/common/local/util"
lappend search_path "$ROOT/core/cache_subsystem/hpdcache/rtl/include"
lappend search_path "$ROOT/core/include"
set_db init_hdl_search_path $search_path

read_hdl -language sv \
    -define { \
        TARGET_CV64A6_IMAFDC_SV39 \
        TARGET_CVA6 \
        TARGET_GENUS \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/common/local/util/tc_sram_wrapper.sv" \
        "$ROOT/common/local/util/sram_cache.sv" \
        "$ROOT/common/local/util/tc_sram_wrapper_cache_techno.sv" \
    ]

set search_path $search_path_initial
