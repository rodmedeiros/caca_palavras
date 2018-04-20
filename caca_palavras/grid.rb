#require 'busca_horizontal.rb'

class Grid
  attr_reader :altura, :largura, :hash_grid
  def initialize(hash_grid = Hash.new, altura, largura)
    @hash_grid = hash_grid
    @altura = altura
    @largura = largura
  end

  private
  # ver o que é melhor: deixar os métodos todos públicos || criar um método público que irá chamar os outros métodos que irão
  # preencher os valores, tipo, "preenche_valores"


  public

  def inserir_altura
    @altura = gets.chomp.to_i
  end

  def inserir_largura
    @largura = gets.chomp.to_i
  end

  def preenche_caca_palavra
    for linha in (1..@altura)
      for coluna in (1..@largura)
        @hash_grid[[linha,coluna]] = rand(65..90).chr
      end
    end
  end

  def imprime_caca_palavras
    l = 1
    for linha in (1..@altura)
      for coluna in (1..@largura)
        print "#{@hash_grid[[linha,coluna]]} " if l == linha
      end
      l += 1
      print "\n"
    end
  end

end

grid  = Grid.new({},0,0)
puts "entre com a largura de sua matriz"
grid.inserir_altura
puts "entre com a altura de sua matriz"
grid.inserir_largura
grid.preenche_caca_palavra
grid.imprime_caca_palavras
#BuscaDireta.direta()