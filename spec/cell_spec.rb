require 'cell'

describe Cell do
  let(:cell) { Cell.new }

  describe '#empty?' do
    it "tells the game if the cell is empty for a player to fill with their symbol" do
      expect(cell.empty?).to eq true
    end
  end

  describe '#fill' do
    it "replaces a blank cell with the player's symbol" do
      expect(cell.contents).to eq "-"
      cell.fill("X")
      expect(cell.contents).to eq "X"
    end
  end
end
