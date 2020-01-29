require 'cell'

describe Cell do
  let(:cell) { Cell.new }

  describe '#empty?' do
    it "tells the game if the cell is empty for a player to fill with their symbol" do
      expect(cell.empty?).to eq true
    end
  end
end
