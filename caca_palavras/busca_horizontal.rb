require_relative 'search_motor.rb'


class BuscaHorizontal < SearchMotor

  def busca_horizontal (hash_grid, altura, largura, palavra)

    valores = ""
    l = 1
    sentido = "esquerda para a direita!"
    sentido_dir_esq = "direita para a esquerda!"
    hash_aux = Hash.new
    valor=""
    for linha in (l..altura)
      for coluna in (1..largura)
        valor = hash_grid.fetch([linha,coluna])
        hash_aux.store([linha,coluna],valor) if l == linha
      end
      controle_chamada_direta(hash_aux, palavra, "horizontal", "esquerda para direita!")
      controle_chamada_inversa(hash_aux, palavra, "horizontal", "direita para esquerda!")
      hash_aux = {}
      valores = ""
      l += 1
    end
  end

end


