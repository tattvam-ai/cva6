// Copyright 2022 Thales DIS design services SAS
//
// Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
// You may obtain a copy of the License at https://solderpad.org/licenses/
//
// Original Author: Jean-Roch COULON - Thales

module tc_sram_wrapper #(
  parameter int unsigned NumWords     = 32'd1024, // Number of Words in data array
  parameter int unsigned DataWidth    = 32'd128,  // Data signal width
  parameter int unsigned ByteWidth    = 32'd8,    // Width of a data byte
  parameter int unsigned NumPorts     = 32'd2,    // Number of read and write ports
  parameter int unsigned Latency      = 32'd1,    // Latency when the read data is available
  parameter              SimInit      = "none",   // Simulation initialization
  parameter bit          PrintSimCfg  = 1'b0,     // Print configuration
  // DEPENDENT PARAMETERS, DO NOT OVERWRITE!
  parameter int unsigned AddrWidth = (NumWords > 32'd1) ? $clog2(NumWords) : 32'd1,
  parameter int unsigned BeWidth   = (DataWidth + ByteWidth - 32'd1) / ByteWidth, // ceil_div
  parameter type         addr_t    = logic [AddrWidth-1:0],
  parameter type         data_t    = logic [DataWidth-1:0],
  parameter type         be_t      = logic [BeWidth-1:0]
) (
  input  logic                 clk_i,      // Clock
  input  logic                 rst_ni,     // Asynchronous reset active low
  // input ports
  input  logic  [NumPorts-1:0] req_i,      // request
  input  logic  [NumPorts-1:0] we_i,       // write enable
  input  addr_t [NumPorts-1:0] addr_i,     // request address
  input  data_t [NumPorts-1:0] wdata_i,    // write data
  input  be_t   [NumPorts-1:0] be_i,       // write byte enable
  // output ports
  output data_t [NumPorts-1:0] rdata_o     // read data
);

// Prefer real technology macro in synthesis; fall back to functional model in sim.
`ifdef SYNTHESIS
  // Basic parameter checks for this design's usage.
  // CVA6 only instantiates 1RW, 64-bit slices, depth = 256 for SRAM slices.
  // If different parameters are used, adjust or extend the wrapper accordingly.
  generate
    if ((NumPorts == 32'd1) && (DataWidth == 32'd64) && (AddrWidth == 32'd8) && (BeWidth == 32'd8)) begin : gen_openram_macro
      // Active-low chip-select and write-enable mapping:
      // csb0 = ~req, web0 = ~(req & we)
      // Byte-write mask is active-high and 8 bits.
      // Address: if macro uses 9-bit address (512 rows), pad MSB with 0 to map 256 rows.
      //
      // OpenRAM macro name expected (adjust if your generator produced a different name):
      //   sky130_sram_2kbyte_1rw_64x256_8
      //
      // Note on power pins:
      // - If USE_POWER_PINS is defined, tie to constants here; your PnR flow
      //   can later global-connect these to real rails.
      // - If your macro omits power pins at RTL, the ifdef block is ignored.
      //
      // One instance per 64-bit slice/port. Here we only support NumPorts==1.
      // Connect single-bit vectors explicitly.
      // verilator lint_off PINCONNECTEMPTY
      `ifdef USE_POWER_PINS
        // Local constant rails for synthesis; replace with global connects in PnR.
        wire vccd1_const = 1'b1;
        wire vssd1_const = 1'b0;
      `endif
      sky130_sram_2kbyte_1rw_64x256_8 u_sram (
      `ifdef USE_POWER_PINS
        .vccd1  ( vccd1_const ),
        .vssd1  ( vssd1_const ),
      `endif
        .clk0     ( clk_i               ),
        .csb0     ( ~req_i[0]           ),
        .web0     ( ~(req_i[0] & we_i[0]) ),
        .wmask0   ( be_i[0]             ),
        // If macro expects 9-bit address, pad MSB with 0; otherwise tools trim it.
        .addr0    ( {1'b0, addr_i[0]}   ),
        .din0     ( wdata_i[0]          ),
        .dout0    ( rdata_o[0]          )
      );
      // verilator lint_on  PINCONNECTEMPTY
    end else begin : gen_unsupported_cfg
      // For unsupported configurations in synthesis, emit an error to catch mismatches early.
      // You can extend this wrapper to support additional widths/depths/ports by adding
      // tiling logic (e.g., stitch multiple macros).
      // synopsys translate_off
      initial begin
        $error("tc_sram_wrapper: Unsupported configuration in synthesis: NumPorts=%0d DataWidth=%0d AddrWidth=%0d BeWidth=%0d. Expected 1RW, 64-bit, 256-depth, 8-bit mask.",
               NumPorts, DataWidth, AddrWidth, BeWidth);
      end
      // synopsys translate_on
    end
  endgenerate
`else
// synthesis translate_off

  tc_sram #(
    .NumWords(NumWords),
    .DataWidth(DataWidth),
    .ByteWidth(ByteWidth),
    .NumPorts(NumPorts),
    .Latency(Latency),
    .SimInit(SimInit),
    .PrintSimCfg(PrintSimCfg)
  ) i_tc_sram (
      .clk_i    ( clk_i   ),
      .rst_ni   ( rst_ni  ),
      .req_i    ( req_i   ),
      .we_i     ( we_i    ),
      .be_i     ( be_i    ),
      .wdata_i  ( wdata_i ),
      .addr_i   ( addr_i  ),
      .rdata_o  ( rdata_o )
    );

// synthesis translate_on
`endif

endmodule
