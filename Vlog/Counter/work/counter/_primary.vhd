library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        c               : in     vl_logic;
        \out\           : out    vl_logic;
        start           : in     vl_logic
    );
end counter;
