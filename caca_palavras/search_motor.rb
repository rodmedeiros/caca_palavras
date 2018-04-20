#1 - pensar em atributos para a classe, mas há a possibilidadede de fazer diversos atributos Boolean - EX. busca_direta
# OU (me parece melhor) criar um atributo  chamado "tipo" - que recebe um símbolo ou um hash, com valores já inicializados
#2 - Talvez seja melhor criar uma classe para cada motor de busca. Daí criar um atributo boleano "direta", if false é inversa

require 'grid'

class SearchMotor
  def initialize (tipo)
    @tipo = tipo
  end

  def busca_direta (Grid.grid)
    l = 1
    hash_aux = {}
    for linha in (1..altura)
      for coluna in (1..largura)
        if l == linha
          # str << "#{linha},#{coluna} "   #"#{@hash_grid[[linha,coluna]]} "

        end
      end
      puts str
      l += 1
      hash_aux = {}
  end


end