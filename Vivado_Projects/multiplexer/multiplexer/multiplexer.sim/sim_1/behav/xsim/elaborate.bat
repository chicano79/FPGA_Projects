@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Mon Feb 19 11:44:05 +0000 2024
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 23d2065a5ef643e89e92912c5028c4c8 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot four_1_mux_behav xil_defaultlib.four_1_mux -log elaborate.log"
call xelab  -wto 23d2065a5ef643e89e92912c5028c4c8 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot four_1_mux_behav xil_defaultlib.four_1_mux -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
