module freq_divider (clk, rst, out);
// Divides the frequency by 64
input clk, rst;
reg [7:0] count = 8'b0;
output reg out;
always @(posedge clk, posedge rst) 
begin
if (rst) begin
count = 8'b0;
end
else 
begin
count = count + 1'b1;
out = count[5];
end
end
endmodule
