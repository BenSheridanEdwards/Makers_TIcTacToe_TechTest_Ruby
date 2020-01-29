class Cell

  attr_reader :contents

  def initialize
    @contents = "-"
  end

  def empty?
    return true if @contents == "-"
  end

  def fill(symbol)
    @contents = symbol if empty?
  end
end
