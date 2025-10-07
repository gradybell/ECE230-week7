module ones_compliment(
    input [3:0] A, B,
    output [3:0] Y
);

wire [3:0] AplusB;
//Carry for A+B
wire [2:0] carry;
//Carry out for A+B
wire around;
//Carry around for (A+B)+around
wire second_carry[2:0];

//first addition
full_adder fa0(
    .A(A[0]),
    .B(B[0]),
    .Y(AplusB[0]),
    .Cin(1'b0), //fixed to zero
    .Cout(carry[0])
);

full_adder fa1(
    .A(A[1]),
    .B(B[1]),
    .Y(AplusB[1]),
    .Cin(carry[0]),
    .Cout(carry[1])
);

full_adder fa2(
    .A(A[2]),
    .B(B[2]),
    .Y(AplusB[2]),
    .Cin(carry[1]),
    .Cout(carry[2])
);

full_adder fa3(
    .A(A[3]),
    .B(B[3]),
    .Y(AplusB[3]),
    .Cin(carry[2]),
    .Cout(around)
);

//second addition
full_adder sa0(
    .A(AplusB[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(around),
    .Cout(second_carry[0])
);

full_adder sa1(
    .A(AplusB[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(second_carry[0]),
    .Cout(second_carry[1])
);

full_adder sa2(
    .A(AplusB[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(second_carry[1]),
    .Cout(second_carry[2])
);

full_adder sa3(
    .A(AplusB[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(second_carry[2])
    //no carry out
);

endmodule