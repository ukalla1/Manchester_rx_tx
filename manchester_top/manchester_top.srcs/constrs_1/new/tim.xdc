create_clock -period 10.000 -name clk100M -waveform {0.000 5.000} -add [get_ports clk100M]
create_clock -period 50.000 -name clk20M -waveform {0.000 25.000} -add [get_ports clk20M]
