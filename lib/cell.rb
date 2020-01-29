class Cell

  def initialize
    @contents = "-"
  end

  def empty?
    return true if @contents == "-"
  end
end
