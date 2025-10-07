module twos_compliment(

 input [7:0] A,
 output [7:0] Y
);

wire [7:0] OnesComp;
wire [6:0] carry;
//Carry out for A+B
wire around;
//Carry around for (A+B)+around

assign OnesComp = ~A;


full_adder f0(
    .A(OnesComp[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(1'b1),
    .Cout(carry[0])
);

full_adder f1(
    .A(OnesComp[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(carry[0]),
    .Cout(carry[1])
);

full_adder f2(
    .A(OnesComp[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(carry[1]),
    .Cout(carry[2])
);

full_adder f3(
    .A(OnesComp[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(carry[2]),
    .Cout(carry[3])
);

full_adder f4(
    .A(OnesComp[4]),
    .B(1'b0),
    .Y(Y[4]),
    .Cin(carry[3]),
    .Cout(carry[4])
);

full_adder f5(
    .A(OnesComp[5]),
    .B(1'b0),
    .Y(Y[5]),
    .Cin(carry[4]),
    .Cout(carry[5])
);

full_adder f6(
    .A(OnesComp[6]),
    .B(1'b0),
    .Y(Y[6]),
    .Cin(carry[5]),
    .Cout(carry[6])
);

full_adder f7(
    .A(OnesComp[7]),
    .B(1'b0),
    .Y(Y[7]),
    .Cin(carry[6]),
    .Cout(carry[7])
);


endmodule

