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
    else
    end
  end

end
