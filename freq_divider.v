module freq_divider (clk, count);
input clk;
output reg count;
reg [20:0] count_temp;
always@(posedge clk)
begin
count_temp = count_temp + 21'b1;
count = count_temp[12];
end
endmodule