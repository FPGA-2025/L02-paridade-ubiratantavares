module calcula_paridade (
  input [7:0] dado,
  output paridade
);

  assign paridade = ^dado; // ^: aplica a operação XOR entre todos os bits do vetor.
   
endmodule
