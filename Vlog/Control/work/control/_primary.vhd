library verilog;
use verilog.vl_types.all;
entity control is
    generic(
        Add             : integer := 1;
        Sub             : integer := 2;
        None1           : integer := 0;
        None2           : integer := 3;
        S0              : integer := 0;
        S1              : integer := 1;
        S2              : integer := 2;
        S3              : integer := 3
    );
    port(
        clk             : in     vl_logic;
        c1              : in     vl_logic;
        c2              : in     vl_logic;
        start           : in     vl_logic;
        q1              : out    vl_logic;
        q2              : out    vl_logic;
        a1              : out    vl_logic;
        a2              : out    vl_logic;
        m1              : out    vl_logic;
        alu             : out    vl_logic;
        count           : out    vl_logic
    );
end control;
