class DiagonalDireta < SearchMotor

  def busca_diagonal_direta (hash_grid, altura, largura, hash_json)
    # declaração de variáveis
    tipo = "diagonal direta"
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
          controle_chamadas(hash_aux, tipo, hash_json)
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
        controle_chamadas(hash_aux, tipo, hash_json)
        hash_aux = {}
      end
    end
  end
end

