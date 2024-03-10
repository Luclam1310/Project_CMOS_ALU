`timescale 1ns / 1ps

module tb_adder();
  reg a, b, cin;
  wire s_ha, s_fa, cout_ha, cout_fa;

half_adder ha0 (a, b, s_ha, cout_ha);
full_adder fa0 (a, b, cin, s_fa, cout_fa);

initial begin
// ___ initial value
  a = 0;
  b = 0;
  cin = 0;
  #50;
// ___ direct verification
  for(int i = 0; i <= 1; i++) begin
    a = i;
    for(int j = 0; j <= 1; j++) begin
      b = j;
      for(int k = 0; k <= 1; k++) begin
        cin = k;
        $display("\n");
        #50;
      end
    end
  end
// ___ random verification
  repeat(50) begin
    a = $random;
    b = $random;
    cin = $random;
    #50;
    $display("\n");
  end
end
// ___ checker
always @(a or b or cin) begin //ha
  #30;
  if({cout_ha, s_ha} == a + b)
    $display("pass_ha\t\ta: %b\tb: %b\ts: %b\tcout: %b", a, b, s_ha, cout_ha);  
  else
    $display("__false_ha\t\ta: %b\tb: %b\ts: %b\tcout: %b_____", a, b, s_ha, cout_ha);
end

always @(a or b or cin) begin //fa
  #30;
  if({cout_fa, s_fa} == a + b + cin) 
    $display("pass_fa\t\ta: %b\tb: %b\tcin: %b\ts: %b\tcout: %b", a, b, cin, s_fa, cout_fa);
  else
    $display("__false_fa\t\ta: %b\tb: %b\tcin: %b\ts: %b\tcout: %b_____", a, b, cin, s_fa, cout_fa);
end
endmodule
