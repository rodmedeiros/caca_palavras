#require_relative 'grid.rb'

class SearchMotor

  def pega_linha(hash_aux)
    valores = ""
    hash_aux.each_value {|x| valores << x}
    return valores
  end

  def busca_palavra (valores, palavra)
    posicao = valores.index(palavra)
    return posicao
  end

  def encontra_posicao (hash_aux, posicao, tipo, palavra, sentido)
    controle = 0
    hash_aux.each do |chave, valor|
      puts "A palavra #{palavra} está na linha #{chave[0]}, coluna #{chave[1]} na #{tipo} da #{sentido}" if posicao == controle
      controle += 1
    end
  end

  def controle_chamada_direta(hash_aux, palavra, tipo, sentido)
    linha_aux = pega_linha(hash_aux)
    posicao = busca_palavra(linha_aux, palavra)
    encontra_posicao(hash_aux, posicao, tipo, palavra, sentido)
  end

  def controle_chamada_inversa(hash_aux, palavra, tipo, sentido)
    linha_aux = pega_linha(hash_aux)
    posicao = busca_palavra(linha_aux.reverse, palavra)
    posicao_invert = posicao_inversa(posicao,linha_aux.length) if posicao != nil
    encontra_posicao(hash_aux, posicao_invert, tipo, palavra, sentido)
  end

  def posicao_inversa (posicao, tamanho)
    pos_invert =  (tamanho-1) - posicao
  end

end



