module freq_divider (clk, count);
input clk;
output reg count;
reg [28:0] count_temp;
always@(posedge clk)
begin
count_temp = count_temp + 29'b1;
count = count_temp[24];
end
endmodule