#class BuscaHorizontal
#end

#require 'grid'

#class BuscaDireta
#public

#def direta (grid)
altura = 3
largura = 3
# str = ""
#l = 1
#for linha in (1..altura)
 # for coluna in (1..largura)
  #  if l == linha
   #   str << "#{linha},#{coluna} "   #"#{@hash_grid[[linha,coluna]]} "
#
 #   end
  #end
 # puts str

#end
#end



hash_grid = {}
for linha in (1..altura)
  for coluna in (1..largura)
    hash_grid[[linha,coluna]] = rand(65..90).chr
  end
end

l = 1
for linha in (1..altura)
  for coluna in (1..largura)
    if l == linha
      print "#{hash_grid[[linha,coluna]]} "
    end
  end
  l += 1
  print "\n"
end

l = 1
hash_aux = {}
for linha in (1..altura)
  for coluna in (1..largura)
    if l == linha
      hash_aux = hash_grid.assoc([linha,coluna])
    end
    print hash_aux
  end
  puts
  #print hash_aux
  l += 1
  hash_aux = {}
end