require_relative 'search_motor.rb'


class BuscaHorizontal < SearchMotor

  def busca_horizontal (hash_grid, altura, largura, hash_json)
    tipo = "horizontal"
    l = 1
    hash_aux = Hash.new
    valor=""
    for linha in (l..altura)
      for coluna in (1..largura)
        valor = hash_grid.fetch([linha,coluna])
        hash_aux.store([linha,coluna],valor) if l == linha
      end
      controle_chamadas(hash_aux, tipo, hash_json)
      hash_aux = {}
      l += 1
    end

  end

end


