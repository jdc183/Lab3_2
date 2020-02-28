library verilog;
use verilog.vl_types.all;
entity mreg is
    generic(
        Hold            : integer := 0;
        Load            : integer := 1
    );
    port(
        clk             : in     vl_logic;
        c1              : in     vl_logic;
        ia              : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end mreg;
