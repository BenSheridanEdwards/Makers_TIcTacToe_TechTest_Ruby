class Board

  attr_reader :board, :p1_symbol, :p2_symbol, :current_turn

  def initialize
    @board = [
    ["-", "-", "-"],
    ["-", "-", "-"],
    ["-", "-", "-"]
  ]
    @p1_symbol = nil
    @p2_symbol = nil
    @current_turn = "Player 1"
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

  def current_player_move(coordinates)
    if @current_turn == "Player 1"
      @board[row_position_from(coordinates)][column_position_from(coordinates)] = @p1_symbol 
      @current_turn = "Player 2"
    elsif current_turn == "Player 2"
      @board[row_position_from(coordinates)][column_position_from(coordinates)] = @p2_symbol 
      @current_turn = "Player 1"
    end
    show_game
  end

  private 

  def row_position_from(coordinates) 
    array_of_letters = coordinates.chars
    result = array_of_letters.first.to_i - 1

    return result
  end

  def column_position_from(coordinates) 
    array_of_letters = coordinates.chars
    result = array_of_letters.last.to_i - 1

    return result
  end
end
