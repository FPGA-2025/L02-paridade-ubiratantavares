module injetor(
  input [8:0] entrada, // palavra de 9 bits (8 bits de dados + 1 bit de paridade)
  input [3:0] n,       // indice do bit onde injetar o erro 
  input erro,          // sinal que ativa ou não a injeção do erro
  output reg [8:0] saida
);

  always @(entrada, n, erro) 
  begin
    if (erro)
      begin
        saida = entrada ^ (1 << n); // inverte o bit especificado por n
      end
    else 
      begin
        saida = entrada; // entrada mantida se erro = 0
      end
  end

endmodule
