`timescale 1ns / 1 ps
module tb_alu_8bit();

reg [7:0] a, b;
reg [0:1] f;
reg cin;

wire [7:0] out;
wire cout;

  alu_8bit alu_8bit0(cin, a, b, f, out, cout);

initial begin
  f   = 2'b00;
  a   = 8'h00;
  b   = 8'h00;
  cin = 8'h00;

  for(int i = 0; i <= 3; i++) begin
    f = i;
    repeat(30) begin
      a   = $random;
      b   = $random;
      cin = $random;
      #200;
    end
    $display("");
  end
end
always @(a or b or cin or f) begin
  #150;
  case (f)
    2'b00:  begin //not
              if(out == ~(a)) begin
                $display("pass_not\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h",a, b, cin, out, cout);
              end else begin
                $display("__false_not\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h___expect:%h",a, b, cin, out, cout, !(a));
              end
            end
    2'b01:  begin//or
              if(out == (a | b)) begin
                $display("pass_or\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h",a, b, cin, out, cout);
              end else begin
                $display("__false_or\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h___expect:%h",a, b, cin, out, cout, (a || b));
              end
            end
    2'b10:  begin//and
              if(out == (a & b)) begin
                $display("pass_and\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h",a, b, cin, out, cout);
              end else begin
                $display("__false_and\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h___expect:%h",a, b, cin, out, cout, (a & b));
              end
            end
    2'b11:  begin//add
              if({cout, out} == (a + b + cin)) begin
                $display("pass_add\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h",a, b, cin, out, cout);
              end else begin
                $display("__false_add\t\ta=%h\tb=%h\tcin=%h\tout=%h\tcout=%h___expect:%b",a, b, cin, out, cout, (a + b + cin));
              end
            end
  endcase
end
endmodule
