class DiagonalDireta < SearchMotor

  def busca_diagonal_direta (hash_grid, altura, largura, palavra)
    # declaração de variáveis
    l = 1
    hash_aux = Hash.new
    #iteração da diagonal direta - da esquerda para a direita - principal (todas as chaves que fazem parte do conjunto linha 1)
    for linha in (l..altura)
      if linha == 1
        for i in (linha..altura)
          for coluna in (i..largura)
            valor = hash_grid.fetch([linha,coluna])
            hash_aux.store([linha,coluna],valor)
            linha += 1
          end
          controle_chamada_direta(hash_aux, palavra, "diagonal direta", "cima para baixo!")
          controle_chamada_inversa(hash_aux, palavra, "diagonal direta", "baixo para cima!")
          hash_aux = {}
          l += 1
          linha = 1
        end
      else
        coluna = 1
        for l in (linha..largura)
          valor = hash_grid.fetch([l,coluna])
          hash_aux.store([l,coluna],valor)
          coluna += 1
        end
        controle_chamada_direta(hash_aux, palavra, "diagonal indireta", "cima para baixo!")
        controle_chamada_inversa(hash_aux, palavra, "diagonal indireta", "baixo para cima!")
        hash_aux = {}
      end
    end
  end
end

