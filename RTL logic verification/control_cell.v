module control_cell (Ln,Z,Fn_1,Pn,An,Dn,Rn,Qn,Fn);
input wire Ln,Z,Fn_1,Pn;
output wire An,Dn,Rn,Qn,Fn;

assign An= Ln & Z;
assign Dn= (Ln & !Z) |Z;
assign Fn= Z & Fn_1;
assign Rn= Pn & (Ln & !Z);
assign Qn= (Z & Fn_1)^(Pn &Z);
endmodule

