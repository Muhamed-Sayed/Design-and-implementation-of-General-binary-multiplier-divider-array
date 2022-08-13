module array6(B,L,Z,Mul_out,Divider_out,remainder);
input wire [3:0] B;
input wire [10:0] L;
input wire Z;
output wire [7:0] Mul_out;
output wire [7:0] Divider_out;
output wire [3:0] remainder;
wire A1,A2,A3,A4,A5,A6,A7,A8;
wire F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11;
wire P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11;
wire D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11;
wire R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11;
wire Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12;

wire C11;
wire C21,C22;
wire C31,C32,C33;
wire C41,C42,C43,C44;
wire C51,C52,C53,C54,C55;
wire C61,C62,C63,C64,C65,C66;
wire C71,C72,C73,C74,C75,C76,C77;
wire C81,C82,C83,C84,C85,C86,C87,C88;
wire C91,C92,C93,C94,C95,C96,C97,C98,C99;
wire C101,C102,C103,C104,C105,C106,C107,C108,C109,C1010;
wire C111,C112,C113,C114,C115,C116,C117,C118,C119,C1110,C1111;

wire S11;
wire S21,S22;
wire S31,S32,S33;
wire S41,S42,S43,S44;
wire S51,S52,S53,S54,S55;
wire S61,S62,S63,S64,S65,S66;
wire S71,S72,S73,S74,S75,S76,S77;
wire S81,S82,S83,S84,S85,S86,S87,S88;
wire S91,S92,S93,S94,S95,S96,S97,S98,S99;
wire S101,S102,S103,S104,S105,S106,S107,S108,S109,S1010;
wire S111,S112,S113,S114,S115,S116,S117,S118,S119,S1110,S1111;
/*
control_cell   u1_0 (.Ln(L[10]),.Z(Z),.Fn_1(1),.Pn(P1),.An(),.Dn(D1),.Rn(R1),.Qn(Q1),.Fn(F1));
universal_cell u1_1 (.A(A4),.B(B[3]),.C(C11),.F(F1),.D(D1),.S(S11),.P(P1));
universal_cell u1_2 (.A(A3),.B(B[2]),.C(C12),.F(F1),.D(D1),.S(S12),.P(C11));
universal_cell u1_3 (.A(A2),.B(B[1]),.C(C13),.F(F1),.D(D1),.S(S13),.P(C12));
universal_cell u1_4 (.A(A1),.B(B[0]),.C(0),.F(F1),.D(D1),.S(S14),.P(C13));
*//*
control_cell   u2_0 (.Ln(L[9]),.Z(Z),.Fn_1(1),.Pn(P2),.An(),.Dn(D2),.Rn(R2),.Qn(Q2),.Fn(F2));
universal_cell u2_1 (.A(A4),.B(B[3]),.C(0),.F(F2),.D(D2),.S(S21),.P(P2));
*/

control_cell   u4_0 (.Ln(L[7]),.Z(Z),.Fn_1(1),.Pn(P4),.An(A8),.Dn(D4),.Rn(R4),.Qn(Q4),.Fn(F4));
universal_cell u4_1 (.A(0),.B(B[3]),.C(C41),.F(F4),.D(D4),.S(S41),.P(P4));
universal_cell u4_2 (.A(0),.B(B[2]),.C(C42),.F(F4),.D(D4),.S(S42),.P(C41));
universal_cell u4_3 (.A(0),.B(B[1]),.C(C43),.F(F4),.D(D4),.S(S43),.P(C42));
universal_cell u4_4 (.A(A8),.B(B[0]),.C(0),.F(F4),.D(D4),.S(S44),.P(C43));

control_cell   u5_0 (.Ln(L[6]),.Z(Z),.Fn_1(Q4),.Pn(P5),.An(A7),.Dn(D5),.Rn(R5),.Qn(Q5),.Fn(F5));
universal_cell u5_1 (.A(S41),.B(0),.C(C51),.F(F5),.D(D5),.S(S51),.P(P5));
universal_cell u5_2 (.A(S42),.B(B[3]),.C(C52),.F(F5),.D(D5),.S(S52),.P(C51));
universal_cell u5_3 (.A(S43),.B(B[2]),.C(C53),.F(F5),.D(D5),.S(S53),.P(C52));
universal_cell u5_4 (.A(S44),.B(B[1]),.C(C54),.F(F5),.D(D5),.S(S54),.P(C53));
universal_cell u5_5 (.A(A7),.B(B[0]),.C(0),.F(F5),.D(D5),.S(S55),.P(C54));


control_cell   u6_0 (.Ln(L[5]),.Z(Z),.Fn_1(Q5),.Pn(P6),.An(A6),.Dn(D6),.Rn(R6),.Qn(Q6),.Fn(F6));
universal_cell u6_1 (.A(S51),.B(1'b0),.C(C61),.F(F6),.D(D6),.S(S61),.P(P6));
universal_cell u6_2 (.A(S52),.B(0),.C(C62),.F(F6),.D(D6),.S(S62),.P(C61));
universal_cell u6_3 (.A(S53),.B(B[3]),.C(C63),.F(F6),.D(D6),.S(S63),.P(C62));
universal_cell u6_4 (.A(S54),.B(B[2]),.C(C64),.F(F6),.D(D6),.S(S64),.P(C63));
universal_cell u6_5 (.A(S55),.B(B[1]),.C(C65),.F(F6),.D(D6),.S(S65),.P(C64));
universal_cell u6_6 (.A(A6),.B(B[0]),.C(0),.F(F6),.D(D6),.S(S66),.P(C65));

control_cell   u7_0 (.Ln(L[4]),.Z(Z),.Fn_1(Q6),.Pn(P7),.An(A5),.Dn(D7),.Rn(R7),.Qn(Q7),.Fn(F7));
universal_cell u7_1 (.A(S61),.B(1'b0),.C(C71),.F(F7),.D(D7),.S(S71),.P(P7));
universal_cell u7_2 (.A(S62),.B(1'b0),.C(C72),.F(F7),.D(D7),.S(S72),.P(C71));
universal_cell u7_3 (.A(S63),.B(0),.C(C73),.F(F7),.D(D7),.S(S73),.P(C72));
universal_cell u7_4 (.A(S64),.B(B[3]),.C(C74),.F(F7),.D(D7),.S(S74),.P(C73));
universal_cell u7_5 (.A(S65),.B(B[2]),.C(C75),.F(F7),.D(D7),.S(S75),.P(C74));
universal_cell u7_6 (.A(S66),.B(B[1]),.C(C76),.F(F7),.D(D7),.S(S76),.P(C75));
universal_cell u7_7 (.A(A5),.B(B[0]),.C(0),.F(F7),.D(D7),.S(S77),.P(C76));

control_cell   u8_0 (.Ln(L[3]),.Z(Z),.Fn_1(Q7),.Pn(P8),.An(A4),.Dn(D8),.Rn(R8),.Qn(Q8),.Fn(F8));
universal_cell u8_1 (.A(S71),.B(1'b0),.C(C81),.F(F8),.D(D8),.S(S81),.P(P8));
universal_cell u8_2 (.A(S72),.B(1'b0),.C(C82),.F(F8),.D(D8),.S(S82),.P(C81));
universal_cell u8_3 (.A(S73),.B(1'b0),.C(C83),.F(F8),.D(D8),.S(S83),.P(C82));
universal_cell u8_4 (.A(S74),.B(0),.C(C84),.F(F8),.D(D8),.S(S84),.P(C83));
universal_cell u8_5 (.A(S75),.B(B[3]),.C(C85),.F(F8),.D(D8),.S(S85),.P(C84));
universal_cell u8_6 (.A(S76),.B(B[2]),.C(C86),.F(F8),.D(D8),.S(S86),.P(C85));
universal_cell u8_7 (.A(S77),.B(B[1]),.C(C87),.F(F8),.D(D8),.S(S87),.P(C86));
universal_cell u8_8 (.A(A4),.B(B[0]),.C(0),.F(F8),.D(D8),.S(S88),.P(C87));


control_cell   u9_0 (.Ln(L[2]),.Z(Z),.Fn_1(Q8),.Pn(P9),.An(A3),.Dn(D9),.Rn(R9),.Qn(Q9),.Fn(F9));
universal_cell u9_1 (.A(S81),.B(1'b0),.C(C91),.F(F9),.D(D9),.S(S91),.P(P9));
universal_cell u9_2 (.A(S82),.B(1'b0),.C(C92),.F(F9),.D(D9),.S(S92),.P(C91));
universal_cell u9_3 (.A(S83),.B(1'b0),.C(C93),.F(F9),.D(D9),.S(S93),.P(C92));
universal_cell u9_4 (.A(S84),.B(0),.C(C94),.F(F9),.D(D9),.S(S94),.P(C93));
universal_cell u9_5 (.A(S85),.B(0),.C(C95),.F(F9),.D(D9),.S(S95),.P(C94));
universal_cell u9_6 (.A(S86),.B(B[3]),.C(C96),.F(F9),.D(D9),.S(S96),.P(C95));
universal_cell u9_7 (.A(S87),.B(B[2]),.C(C97),.F(F9),.D(D9),.S(S97),.P(C96));
universal_cell u9_8 (.A(S88),.B(B[1]),.C(C98),.F(F9),.D(D9),.S(S98),.P(C97));
universal_cell u9_9 (.A(A3),.B(B[0]),.C(0),.F(F9),.D(D9),.S(S99),.P(C98));


control_cell   u10_0 (.Ln(L[1]),.Z(Z),.Fn_1(Q9),.Pn(P10),.An(A2),.Dn(D10),.Rn(R10),.Qn(Q10),.Fn(F10));
universal_cell u10_1 (.A(S91),.B(1'b0),.C(C101),.F(F10),.D(D10),.S(S101),.P(P10));
universal_cell u10_2 (.A(S92),.B(1'b0),.C(C102),.F(F10),.D(D10),.S(S102),.P(C101));
universal_cell u10_3 (.A(S93),.B(1'b0),.C(C103),.F(F10),.D(D10),.S(S103),.P(C102));
universal_cell u10_4 (.A(S94),.B(0),.C(C104),.F(F10),.D(D10),.S(S104),.P(C103));
universal_cell u10_5 (.A(S95),.B(0),.C(C105),.F(F10),.D(D10),.S(S105),.P(C104));
universal_cell u10_6 (.A(S96),.B(0),.C(C106),.F(F10),.D(D10),.S(S106),.P(C105));
universal_cell u10_7 (.A(S97),.B(B[3]),.C(C107),.F(F10),.D(D10),.S(S107),.P(C106));
universal_cell u10_8 (.A(S98),.B(B[2]),.C(C108),.F(F10),.D(D10),.S(S108),.P(C107));
universal_cell u10_9 (.A(S99),.B(B[1]),.C(C109),.F(F10),.D(D10),.S(S109),.P(C108));
universal_cell u10_10 (.A(A2),.B(B[0]),.C(0),.F(F10),.D(D10),.S(S1010),.P(C109));


control_cell   u11_0 (.Ln(L[0]),.Z(Z),.Fn_1(Q10),.Pn(P11),.An(A1),.Dn(D11),.Rn(R11),.Qn(Q11),.Fn(F11));
universal_cell u11_1 (.A(S101),.B(1'b0),.C(C111),.F(F11),.D(D11),.S(S111),.P(P11));
universal_cell u11_2 (.A(S102),.B(1'b0),.C(C112),.F(F11),.D(D11),.S(S112),.P(C111));
universal_cell u11_3 (.A(S103),.B(1'b0),.C(C113),.F(F11),.D(D11),.S(S113),.P(C112));
universal_cell u11_4 (.A(S104),.B(0),.C(C114),.F(F11),.D(D11),.S(S114),.P(C113));
universal_cell u11_5 (.A(S105),.B(0),.C(C115),.F(F11),.D(D11),.S(S115),.P(C114));
universal_cell u11_6 (.A(S106),.B(0),.C(C116),.F(F11),.D(D11),.S(S116),.P(C115));
universal_cell u11_7 (.A(S107),.B(0),.C(C117),.F(F11),.D(D11),.S(S117),.P(C116));
universal_cell u11_8 (.A(S108),.B(B[3]),.C(C118),.F(F11),.D(D11),.S(S118),.P(C117));
universal_cell u11_9 (.A(S109),.B(B[2]),.C(C119),.F(F11),.D(D11),.S(S119),.P(C118));
universal_cell u11_10 (.A(S1010),.B(B[1]),.C(C1110),.F(F11),.D(D11),.S(S1110),.P(C119));
universal_cell u11_11 (.A(A1),.B(B[0]),.C(0),.F(F11),.D(D11),.S(S1111),.P(C1110));

assign D12=Z&!Q11;
universal_cell u12_2 (.A(S118),.B(B[3]),.C(C121),.F(0),.D(D12),.S(S121),.P());
universal_cell u12_3 (.A(S119),.B(B[2]),.C(C122),.F(0),.D(D12),.S(S122),.P(C121));
universal_cell u12_4 (.A(S1110),.B(B[1]),.C(C123),.F(0),.D(D12),.S(S123),.P(C122));
universal_cell u12_5 (.A(S1111),.B(B[0]),.C(0),.F(0),.D(D12),.S(S124),.P(C123));

assign Q12=R4|R5|R6|R7|R8|R9|R10|R11;
assign Divider_out={Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11};
assign Mul_out={S114,S115,S116,S117,S121,S122,S123,S124};
assign remainder={S121,S122,S123,S124};

endmodule
