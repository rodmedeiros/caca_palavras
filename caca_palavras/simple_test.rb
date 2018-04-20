linha = 1
coluna = 1
altura = 3
largura = 3


hash_grid = Hash.new

for linha in 1..altura
  for coluna in 1..largura
    hash_grid[rand(65..90).chr] = linha,coluna

  end
end
puts hash_grid

