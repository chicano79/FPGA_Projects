--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Mar 18 10:17:51 2024
--Host        : DESKTOP-7RQ9HLB running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    A_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK_0 : in STD_LOGIC;
    S_0 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 6 downto 0 );
    B : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_c_addsub_0_0;
  signal A_0_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal B_0_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal CLK_0_1 : STD_LOGIC;
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of A_0 : signal is "xilinx.com:signal:data:1.0 DATA.A_0 DATA";
  attribute X_INTERFACE_PARAMETER of A_0 : signal is "XIL_INTERFACENAME DATA.A_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B_0 : signal is "xilinx.com:signal:data:1.0 DATA.B_0 DATA";
  attribute X_INTERFACE_PARAMETER of B_0 : signal is "XIL_INTERFACENAME DATA.B_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of S_0 : signal is "xilinx.com:signal:data:1.0 DATA.S_0 DATA";
  attribute X_INTERFACE_PARAMETER of S_0 : signal is "XIL_INTERFACENAME DATA.S_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 7} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 7}";
begin
  A_0_1(6 downto 0) <= A_0(6 downto 0);
  B_0_1(6 downto 0) <= B_0(6 downto 0);
  CLK_0_1 <= CLK_0;
  S_0(6 downto 0) <= c_addsub_0_S(6 downto 0);
c_addsub_0: component design_1_c_addsub_0_0
     port map (
      A(6 downto 0) => A_0_1(6 downto 0),
      B(6 downto 0) => B_0_1(6 downto 0),
      CLK => CLK_0_1,
      S(6 downto 0) => c_addsub_0_S(6 downto 0)
    );
end STRUCTURE;
