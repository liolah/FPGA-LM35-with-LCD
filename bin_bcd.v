module bin_bcd(bin, bcd);

input [7:0] bin;
output reg [15:0] bcd;
integer i;   

always @(bin)
  begin
    bcd = 0; //initialize bcd to zero.
    for (i = 0; i < 6; i = i + 1) //run for 6 iterations
    begin
      bcd = { bcd[14:8], bin[7 - i], bcd[7:0] }; //shift the bits to the right and add the new bit.
      if(i < 5 && bcd[11:8] > 4'b0100) 
          bcd[11:8] = bcd[11:8] + 4'b0011;
      if(i < 5 && bcd[15:12] > 4'b0100)
          bcd[15:12] = bcd[15:12] + 4'b0011;
    end
    case(bin[1:0])
      2'b00: bcd[7:0] = 8'b00000000;
      2'b01: bcd[7:0] = 8'b00100101;
      2'b10: bcd[7:0] = 8'b01010000;
      2'b11: bcd[7:0] = 8'b01110101;
      default: bcd[7:0] = 8'b00000000;
    endcase
  end     
endmodule
