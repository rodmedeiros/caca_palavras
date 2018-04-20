
#grid = [ [l,1,1], [c,1,2],[a,1,3], [s,1,4], [a,1,5],
#         [m,2,1], [m,2,2], [m,2,3], [m,2,4], [m,2,5],
#         [m,3,1], [m,3,2], [m,3,3], [m,3,4], [m,3,5],
#         [m,4,1], [m,4,2], [m,4,3], [m,4,4], [m,4,5]
#      ]

n = 5
linha_aux=""
for l in (1..n) #itera todas as linhas
  if l == 1 # a 1 deve receber um tratamento especial, pois a maior parte das demais cobinações são subconjuntos dela
    for i in (1..n) #definindo qual coluna será iterada
      for c in (i..n) #
        #linha_aux << grid[linha,coluna]
        #testa_palavra(linha_aux)
        linha = 1
        linha_aux << "#{l},#{c} "
        l = l + 1
      end
      puts linha_aux
      linha_aux = "" #ver a possibilidade de uso do método .clear
      l = 1
    end
  else

    for c in (1..n) #iterar as diagonais que não são subconjuntos da linha 1
        #linha_aux << grid[linha,coluna]
        #testa_palavra(linha_aux)
        print "#{l},#{c}; "
    end
    puts
  end

end