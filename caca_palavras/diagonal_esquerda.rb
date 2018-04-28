class DiagonalEsquerda < SearchMotor

  def busca_diagonal_esquerda (hash_grid, altura, largura, hash_json)
    linha = 1
    tipo = "diagonal indireta"
    hash_aux = Hash.new
    for linha in (1..largura)
      if linha == 1
        for i in (altura.downto(linha)) #definindo qual coluna será iterada
          for coluna in (i.downto(linha)) #
            valor = hash_grid.fetch([linha,coluna])
            hash_aux.store([linha,coluna],valor)
            linha += 1
          end
          controle_chamadas(hash_aux, tipo, hash_json)
          hash_aux = {}
          linha = 1
        end
      else
        l = linha
        for coluna in (largura.downto(linha)) #
          valor = hash_grid.fetch([l,coluna])
          hash_aux.store([l,coluna],valor)
          l += 1
        end
        controle_chamadas(hash_aux, tipo, hash_json)
        hash_aux = {}
      end
    end
  end
end




















