class Board

  attr_reader :board, :p1_symbol, :p2_symbol

  def initialize
    @board = [
    ["-", "-", "-"],
    ["-", "-", "-"],
    ["-", "-", "-"]
  ]
    @p1_symbol = nil
    @p2_symbol = nil
  end

  def show_game
    puts "\n-------"
    return @board.each do |row|
      print '|' 
      row.each { |cell| print "#{cell}|" }
      puts "\n-------"
    end
  end

  def player_1_symbol(symbol)
    if symbol == "X"
      @p1_symbol = "X"
      @p2_symbol = "O"
    elsif symbol == "O"
      @p1_symbol = "O"
      @p2_symbol = "X"
    end
  end

  def player_1_move(coordinates)
    array_of_letters = coordinates.chars
    p array_of_letters
    @board[array_of_letters.first.to_i - 1][array_of_letters.last.to_i - 1] = @p1_symbol
  end
end
