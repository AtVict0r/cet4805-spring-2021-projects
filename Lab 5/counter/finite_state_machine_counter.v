// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// Generated by Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
// Created on Mon May 03 19:48:58 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module finite_state_machine_counter (
    reset,clock,dir,
    Q);

    input reset;
    input clock;
    input dir;
    tri0 reset;
    tri0 dir;
    output [2:0] Q ;
    reg [2:0] Q ;
    reg [2:0] reg_Q ;
    reg [5:0] fstate;
    reg [5:0] reg_fstate;
    parameter state2=0,state3=1,state4=2,state5=3,state1=4,state0=5;

    initial
    begin
        reg_Q  <= 3'b000;
    end

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or dir or reg_Q )
    begin
        if (reset) begin
            reg_fstate <= state0;
            reg_Q  <= 3'b000;
            Q  <= 3'b000;
        end
        else begin
            reg_Q  <= 3'b000;
            Q  <= 3'b000;
            case (fstate)
                state2: begin
                    if (dir)
                        reg_fstate <= state3;
                    else if (~(dir))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    reg_Q  <= 3'b010;
                end
                state3: begin
                    if (dir)
                        reg_fstate <= state4;
                    else if (~(dir))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    reg_Q  <= 3'b011;
                end
                state4: begin
                    if (dir)
                        reg_fstate <= state5;
                    else if (~(dir))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    reg_Q  <= 3'b100;
                end
                state5: begin
                    if (dir)
                        reg_fstate <= state0;
                    else if (~(dir))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state5;

                    reg_Q  <= 3'b101;
                end
                state1: begin
                    if (dir)
                        reg_fstate <= state2;
                    else if (~(dir))
                        reg_fstate <= state0;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    reg_Q  <= 3'b001;
                end
                state0: begin
                    if (dir)
                        reg_fstate <= state1;
                    else if (~(dir))
                        reg_fstate <= state5;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state0;

                    reg_Q  <= 3'b000;
                end
                default: begin
                    reg_Q  <= 3'bxxx;
                    $display ("Reach undefined state");
                end
            endcase
            Q  <= reg_Q ;
        end
    end
endmodule // finite_state_machine_counter
