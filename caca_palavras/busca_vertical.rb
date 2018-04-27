require_relative 'search_motor.rb'

class BuscaVertical < SearchMotor
  def busca_vertical (hash_grid, altura, largura, palavra)
    l = 1
    hash_aux = Hash.new
    valor=""
    for coluna in (l..largura)
      for linha in (1..altura)
        valor = hash_grid.fetch([linha,coluna])
        hash_aux.store([linha,coluna],valor) if l == coluna
      end
      controle_chamada_direta(hash_aux, palavra, "vertical", "cima para baixo!")
      controle_chamada_inversa(hash_aux, palavra, "vertical", "baixo para cima!")
      hash_aux = {}
      l += 1
    end
  end
end