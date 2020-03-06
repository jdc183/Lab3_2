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
        q1              : out    vl_logic_vector(1 downto 0);
        q2              : out    vl_logic_vector(1 downto 0);
        a1              : out    vl_logic_vector(1 downto 0);
        a2              : out    vl_logic_vector(1 downto 0);
        m1              : out    vl_logic_vector(1 downto 0);
        alu             : out    vl_logic_vector(1 downto 0);
        count           : out    vl_logic_vector(1 downto 0)
    );
end control;
