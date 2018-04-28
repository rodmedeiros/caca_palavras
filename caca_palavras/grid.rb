require_relative 'busca_horizontal'
require_relative 'busca_vertical.rb'
require_relative 'search_motor.rb'
require_relative 'diagonal_direta.rb'
require_relative 'diagonal_esquerda.rb'
require_relative 'dicionario'


class Grid
  attr_reader :altura, :largura, :hash_grid
  def initialize(hash_grid = Hash.new, altura, largura)
    @hash_grid = hash_grid
    @altura = altura
    @largura = largura
  end

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
    for linha in (1..altura)
      for coluna in (1..largura)
        print "#{hash_grid[[linha,coluna]]} " if l == linha
      end
      l += 1
      print "\n"
    end
  end

end

palavra = "OI"
grid  = Grid.new({},0,0)
puts "entre com a largura de sua matriz"
grid.inserir_altura
puts "entre com a altura de sua matriz"
grid.inserir_largura
grid.preenche_caca_palavra
grid.imprime_caca_palavras
dicionario = Dicionario.new
hash_json = dicionario.importa_json
horizontal = BuscaHorizontal.new
horizontal.busca_horizontal(grid.hash_grid, grid.altura, grid.largura, hash_json)
vertical = BuscaVertical.new
vertical.busca_vertical(grid.hash_grid, grid.altura, grid.largura, hash_json)
diagonal_direta = DiagonalDireta.new
diagonal_direta.busca_diagonal_direta(grid.hash_grid, grid.altura, grid.largura, hash_json)
diagonal_esquerda = DiagonalEsquerda.new
diagonal_esquerda.busca_diagonal_esquerda(grid.hash_grid, grid.altura, grid.largura, hash_json)
