my_hash = Hash.new


linha = 1
coluna = 1
for linha in 1..@altura
  (1..@largura).each do |letra, coluna|
    @hash_grid["a"] = linha, coluna
  end
end