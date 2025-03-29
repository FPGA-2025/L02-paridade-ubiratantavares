module verifica_paridade (
  input [8:0] dado, // a paridade é o bit mais significativo (dado[8])
  output erro
);

  assign erro = ^dado; // XOR entre todos os bits do dado
  
endmodule
