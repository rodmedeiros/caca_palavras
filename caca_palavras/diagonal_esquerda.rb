n = 5
m = 5
linha_aux=""
for l in (1..n) #itera todas as linhas
  if l == 1 # a 1 deve receber um tratamento especial, pois a maior parte das demais cobinações são subconjuntos dela
    for i in (m.downto(l)) #definindo qual coluna será iterada
      for c in (i.downto(l)) #
        #linha_aux << grid[linha,coluna]
        #testa_palavra(linha_aux)
        linha_aux << "#{l},#{c} "
        l += 1
      end
      puts linha_aux
      linha_aux = "" #ver a possibilidade de uso do método .clear
      l = 1
    end
  else
    linha = l
    for c in (m.downto(l)) #
      #linha_aux << grid[linha,coluna]
      #testa_palavra(linha_aux)
      linha_aux << "#{linha},#{c} "
      linha +=1
    end
    puts linha_aux
    #linha_aux = "" #ver a possibilidade de uso do método .clear
    linha_aux = ""
    #end


  end

end