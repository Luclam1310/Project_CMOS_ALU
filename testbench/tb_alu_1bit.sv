`timescale 1ns / 1ps

module tb_alu_1bit();

reg a, b, cin;
reg [1:0] f;
wire out, cout;

alu_1bit alu_1bit0(a, b, cin, f, out, cout);

initial begin
  a   = 1'b0;
  b   = 1'b0;
  cin = 1'b0;
  #10;
  
// ___ direct verification
  for(int i = 0; i <= 3; i++) begin
    f = i;
    for(int j = 0; j <= 1; j++) begin
      a = j;
      for(int k = 0; k <= 1; k++) begin
        b = k;
        for(int l = 0; l <= 1; l++) begin
          cin = l;
          #100;
          //$display("\n");
        end
      end
    end
  end

 //___random verification
  repeat(50) begin
    f = $random;
    a = $random;
    b = $random;
    cin = $random;
    #100;
    $display("\n");
  end
end
always @(a or b or cin or f) begin
  #80;
  case (f)
    2'b00:  begin
              if(out == ~a) begin
                $display("pass_not\t\ta:%b\t\tout:%b", a, out);
              end else begin
                $display("false_not\t\ta:%b\t\tout:%b___", a, out);
              end
            end
    2'b01:  begin
              if(out == a | b) begin
                $display("pass_or\t\ta:%b\tb:%b\tout:%b", a, b, out);
              end else begin
                $display("false_or\t\ta:%b\tb:%b\tout:%b___", a, b, out);
              end
            end
    2'b10:  begin
              if(out == (a & b)) begin
                $display("pass_and\t\ta:%b\tb:%b\tout:%b", a, b, out);
              end else begin
                $display("false_and\t\ta:%b\tb:%b\tout:%b___", a, b, out);
              end
            end
    2'b11:  begin;
              if({cout, out} == (a + b + cin)) begin
                $display("pass_add\t\ta:%b\tb:%b\tcin:%b\tout:%b\tcout:%b", a, b, cin, out, cout);
              end else begin
                $display("false_add\t\ta:%b\tb:%b\tcin:%b\tout:%b\tcout:%b___", a, b, cin, out, cout);
              end
            end
  endcase
end
endmodule
