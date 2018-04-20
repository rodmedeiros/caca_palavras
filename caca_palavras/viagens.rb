class Viagens



  # metodo para trocar a posição dos caracteres para a ordem vertical, mas deve ser mantidas as keys.
  # idéia: fazer um hash auxiliar que vai pegando primeiro todos os hash c indice de linha igual a 1,
  # e assim sucessivamente, mas mantendo as chaves (linha e coluna) a fim de dar o resultado correto

  def to_vertical (meu_hash)
    linha_aux = 1
    hash_aux = Hash.new
    while linha <= m #m é a última linha da coluna
      meu_hash.each |pal,line,col| do
        if line == linha_aux
          hash_aux[pal] = line, col #troca a posição da palavra, mas mantém as keys
        end
      end
      linha aux+=1
    end
  meu_hash = hash_aux
  end

  #um problema: se tratar td como apenas uma linha eu irei unir duas linhas diferentes. ex. kjdbfca/saoedf
  # neste caso eu encontraria a palavra casa. (errado)
  # possível solução: pegar linha por linha e verificar a existência da palavra, levar junto as chaves(linha, coluna)
  def pega_linha_direta (m)
    linha = 1
    while linha <= m
      meu_hash.each |x| do

    end
  end

  # pensando no método para realizar a conferência das diagonais

  def diagonal_direita (grid.Grid) #recebe como parâmetro o grid do caça palavras
    for linha in (1..n) #itera todas as linhas
      if linha == 1 # a 1 deve receber um tratamento especial, pois a maior parte das demais cobinações são subconjuntos dela
        for i in (1..n) #definindo qual coluna será iterada
          for coluna in (i..n) #
            linha_aux << grid[linha,coluna]
            testa_palavra(linha_aux)
          end
          linha_aux = "" #ver a possibilidade de uso do método .clear
        end
      else
        for coluna in ((linha + 1)..n) #iterar as diagonais que não são subconjuntos da linha 1
          linha_aux << grid[linha,coluna]
          testa_palavra(linha_aux)
        end
      end
      linha += 1
    end
  end
end