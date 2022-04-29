module lcd_ctrl (clk, rst, intr, bcd, wr, lcd_data, en, rs);

input clk, rst, intr;
input [15:0] bcd;

output reg rs, en, wr;
output reg [7:0] lcd_data;

parameter s0 = 5'b00000,
          s1 = 5'b00001,
          s2 = 5'b00010,
          s3 = 5'b00011,
          s4 = 5'b00100,
          s5 = 5'b00101,
          s6 = 5'b00110,
          s7 = 5'b00111,
          s8 = 5'b01000,
          s9 = 5'b01001,
          s10 = 5'b01010,
          s11 = 5'b01011,
          s12 = 5'b01100,
          s13 = 5'b01101, 
          s14 = 5'b01110, 
          s15 = 5'b01111, 
          s16 = 5'b10000, 
          s17 = 5'b10001, 
          s18 = 5'b10010, 
          s19 = 5'b10011;

parameter [7:0] display_on = 8'b00001100,
                clr = 8'b00000001, 
                point = 8'b00101110, 
                space = 8'b00100000, 
                deg_symbol = 8'b11011111, 
                c = 8'b01000011;

reg [4:0] current_state = 4'b0000, next_state;

always @(current_state, intr)
begin: next_state_logic
case(current_state)
s0:begin
next_state = s1;
end
s1:begin
next_state = s2;
end
s2:begin
next_state = s3;
end
s3:begin
  if (intr) begin
    next_state = s3;
  end else begin
    next_state = s4;
  end
end
s4:begin
next_state = s5;
end
s5:begin
next_state = s6;
end
s6:begin
next_state = s7;
end
s7:begin
next_state = s8;
end
s8:begin
next_state = s9;
end
s9:begin
next_state = s10;
end
s10:begin
next_state = s11;
end
s11:begin
next_state = s12;
end
s12:begin
next_state = s13;
end
s13:begin
next_state = s14;
end
s14:begin
next_state = s15;
end
s15:begin
next_state = s16;
end
s16:begin
next_state = s17;
end
s17:begin
next_state = s18;
end
s18:begin
next_state = s19;
end
s19:begin
next_state = s0;
end

default: next_state = s0;
endcase
end

always @(posedge clk, posedge rst)
begin: register_generation
if (rst) begin
current_state = s0;
end
else begin
current_state = next_state;
end
end

always @(current_state, bcd)
begin: output_logic
case (current_state)
s0: begin
en = 1;
rs = 0;
wr = 1;
lcd_data = display_on;
end
s1: begin
en = 0;
rs = 0;
wr = 1;
lcd_data = display_on;
end
s2: begin
en = 1;
rs = 0;
wr = 0;
lcd_data = clr;
end
s3: begin
en = 0;
rs = 0;
wr = 1;
lcd_data = clr;
end
s4: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[15:12] };
end
s5: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[15:12] };
end
s6: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[11:8] };
end
s7: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[11:8] };
end
s8: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = point;
end
s9: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = point;
end
s10: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[7:4] };
end
s11: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[7:4] };
end
s12: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[3:0] };
end
s13: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = { 4'b0011, bcd[3:0] };
end
s14: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = space;
end
s15: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = space;
end
s16: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = deg_symbol;
end
s17: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = deg_symbol;
end
s18: begin
en = 1;
rs = 1;
wr = 1;
lcd_data = c;
end
s19: begin
en = 0;
rs = 1;
wr = 1;
lcd_data = c;
end

endcase
end
endmodule