library verilog;
use verilog.vl_types.all;
entity alu is
    generic(
        Add             : integer := 0;
        Sub             : integer := 1
    );
    port(
        c               : in     vl_logic;
        ia              : in     vl_logic_vector(3 downto 0);
        ib              : in     vl_logic_vector(3 downto 0);
        sum             : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end alu;
