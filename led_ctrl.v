module led_ctrl(din,led);
input [7:0] din;
output led;
assign led = (din > 8'b10010110) ? 1'b1 : 1'b0;
endmodule