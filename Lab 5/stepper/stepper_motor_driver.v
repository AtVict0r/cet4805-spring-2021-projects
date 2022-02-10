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
// Created on Tue May 04 01:24:36 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module stepper_motor_driver (
    reset,clock,dir,
    Q [3:0]);

    input reset, clock, dir;
	 
    tri0 reset, dir;
	 
    output reg [3:0] Q ;

    reg [3:0] reg_Q, fstate, reg_fstate;
	 
    parameter state1=0, state2=1, state3=2, state4=3;

    initial
    begin
        reg_Q  <= 4'b0000;
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
            reg_fstate <= state1;
            reg_Q  <= 4'b0000;
            Q  <= 4'b0000;
        end
        else begin
            reg_Q  <= 4'b0000;
            Q  <= 4'b0000;
            case (fstate)
                state1: begin
                    if (dir)
                        reg_fstate <= state2;
                    else if (~(dir))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    reg_Q  <= 4'b0001;
                end
                state2: begin
                    if (dir)
                        reg_fstate <= state3;
                    else if (~(dir))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    reg_Q  <= 4'b0010;
                end
                state3: begin
                    if (dir)
                        reg_fstate <= state4;
                    else if (~(dir))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    reg_Q  <= 4'b0100;
                end
                state4: begin
                    if (dir)
                        reg_fstate <= state1;
                    else if (~(dir))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    reg_Q  <= 4'b1000;
                end
                default: begin
                    reg_Q  <= 4'bxxxx;
                    $display ("Reach undefined state");
                end
            endcase
            Q  <= reg_Q ;
        end
    end
endmodule // stepper_motor_driver
