module  tb_logic_gate();
reg a, b;
wire y_and, y_or, y_xor, y_not, y_nand, y_nor;

and_2       and0  (a, b, y_and);
or_2        or0   (a, b, y_or);
xor_2       xor0  (a, b, y_xor);
not_1       not0  (a, y_not);
nand_2      nand0 (a, b, y_nand);
nor_2       nor_2 (a, b, y_nor);


initial begin
  a = 1'b0;
  b = 1'b0;
  #50;
// _____direct verification
  for(int i = 0; i <= 1; i++) begin
    a = i;
    for(int j = 0; j <= 1; j++) begin
      b = j;
      #50;
      $display("\n");
    end
  end

// _____random verification
  repeat(10) begin
    a = $random;
    b = $random;
    $display("\n");
    #50;
  end
end

// _____ checker
always @(a or b) begin //and
  #10;
  if(y_and == (a & b))
    $display("pass_and\t\ta: %b\tb: %b\ty: %b", a, b, y_and);
  else
    $display("__false_and\t\ta: %b\tb: %b\ty: %b_____", a, b, y_and);
end

always @(a or b) begin //or
  #10;
  if(y_or == (a | b))
    $display("pass_or\t\ta: %b\tb: %b\ty: %b", a, b, y_or);
  else
    $display("__false_or\t\ta: %b\tb: %b\ty: %b_____", a, b, y_or);
end

always @(a or b) begin //xor
  #10;
  if(y_xor == (a ^ b))
    $display("pass_XOR\t\ta: %b\tb: %b\ty: %b", a, b, y_xor);
  else
    $display("__false_XOR\t\ta: %b\tb: %b\ty: %b_____", a, b, y_xor);
end

always @(a or b) begin //not
  #10;
  if(y_not == ~a)
    $display("pass_not\t\ta: %b\t\ty: %b", a, y_not);
  else
    $display("__false_not\t\ta: %b\t\ty: %b_____", a, y_not);
end

always @(a or b) begin //nand
  #10;
  if(y_nand == ~(a & b))
    $display("pass_nand\t\ta: %b\tb: %b\ty: %b", a, b, y_nand);
  else
    $display("__false_nand\t\ta: %b\tb: %b\ty: %b_____", a, b, y_nand);
end

always @(a or b) begin //nor
  #10;
  if(y_nor == ~(a | b))
    $display("pass_nor\t\ta: %b\tb: %b\ty: %b", a, b, y_nor);
  else
    $display("__false_nor\t\ta: %b\tb: %b\ty: %b_____", a, b, y_nor);
end

//always @(a or b) begin //ha
//  #10;
//  if({cout, s} == a + b)
//    $display("pass_not\t\ta: %b\tb: %b\ts: %b\tcout: %b", a, b, s, cout);
//  else 
//    $display("__false_ha\t\ta: %b\tb: %b\ts: %b\tcout: %b_____", a, b, s, cout);
//end
endmodule
