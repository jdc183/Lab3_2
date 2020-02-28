library verilog;
use verilog.vl_types.all;
entity regq is
    generic(
        Hold            : integer := 0;
        Load            : integer := 1;
        Shift           : integer := 2
    );
    port(
        clk             : in     vl_logic;
        c1              : in     vl_logic;
        c2              : in     vl_logic;
        ia              : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(4 downto 0)
    );
end regq;
