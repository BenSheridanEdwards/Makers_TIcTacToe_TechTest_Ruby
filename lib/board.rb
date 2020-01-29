class Board

  attr_reader :board

  def initialize
    @board = [
    ["-", "-", "-"],
    ["-", "-","-"],
    ["-", "-", "-"]
  ]
  end

  def show_game
    puts "\n-------"
    return @board.each do |row|
      print '|' 
      row.each { |cell| print "#{cell}|" }
      puts "\n-------"
    end
  end
end