// Code your design here
module patt_detection #
  (
    parameter PATTERN = 4'b1010
  )
  (
  input data_in,
  input input_en,
  input clk,
  input rst,
  output match
);

reg [3:0]data_temp;

always@(posedge clk or negedge rst)
begin
  if(!rst)
    data_temp <= 4'd0;
  else if(input_en)
    data_temp <= {data_temp[2],data_temp[1],data_temp[0],data_in};
end
  
  assign match = (data_temp == PATTERN)?1'd1:1'd0;

  
endmodule
