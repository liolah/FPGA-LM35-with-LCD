`timescale 1ns/1ns
module temprature_sensor_tb();

reg clk, rst, intr;
reg [7:0] adc;

wire en, rs, wr, led_state;
wire [7:0] lcd_in;

temprature_sensor dut (clk, rst, intr, adc, en, rs, wr, led_state, lcd_in);

initial begin
clk = 1;
intr = 0;
adc = 8'b10010101;
forever #10 clk=~clk;
end

initial begin
rst = 1;
#10
rst = 0;
// #60
// rst = 0;
end

always @(wr) begin
if (!wr) begin
intr = 1;
end
end

always @(intr) begin
  if(intr) begin
    #7000
    adc = adc + 1'b1;
    intr = 0;
  end
end

endmodule

