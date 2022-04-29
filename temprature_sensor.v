module temprature_sensor (clk, rst, intr, adc, en, rs, wr, led_state, lcd_data);

input clk, rst, intr;
input [7:0] adc;

output en, rs, wr, led_state;
output [7:0] lcd_data;

wire clk_div;
wire [15:0] bcd_out;

led_ctrl i0 (adc, led_state);
freq_divider i1 (clk, rst, clk_div);
bin_bcd i2 (adc, bcd_out);
lcd_ctrl i3 (clk_div, rst, intr, bcd_out, wr, lcd_data, en, rs);

endmodule