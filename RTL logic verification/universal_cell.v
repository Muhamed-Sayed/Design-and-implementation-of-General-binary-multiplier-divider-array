module universal_cell(A,B,C,F,D,G,U,S,P,V);
input wire A,B,C,F,D;
output wire G,U,S,P,V;

wire W;
assign W= A^F;
assign S=A^(B&D)^(C&D);
assign P=(W&B)|(B&C)|(W&C);
assign U=D;
assign V=B;
assign G=F;

endmodule
