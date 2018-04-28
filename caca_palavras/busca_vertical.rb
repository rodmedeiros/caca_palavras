require_relative 'search_motor.rb'

class BuscaVertical < SearchMotor
  def busca_vertical (hash_grid, altura, largura, hash_json)
    tipo = "vertical"
    l = 1
    hash_aux = Hash.new
    for coluna in (l..largura)
      for linha in (1..altura)
        valor = hash_grid.fetch([linha,coluna])
        hash_aux.store([linha,coluna],valor) if l == coluna
      end
      controle_chamadas(hash_aux, tipo, hash_json)
      hash_aux = {}
      l += 1
    end

  end

end