require_relative 'Grid'

class Resposta
  def initialize(palavra, linha, coluna, tipo_busca, achou = false)
    @palavra = palavra
    @linha = linha
    @coluna = coluna
    @tipo_busca = tipo_busca
    @achou = achou
  end

  #Opção: Na main chama o acha palavra, o acha palavra chama os motores de busca OU o contrário????
  def acha_palavra (Grid.grid, Resposta.resposta)
    aux = str.index(palavra)
    if  aux!= nil
      @linha = aux
      @achou = true
      encaminha

    end
  end










end