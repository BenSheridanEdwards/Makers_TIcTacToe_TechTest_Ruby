require 'board'

describe Board do

  let(:board) { Board.new }

  it 'has a 3 x 3 grid' do
    expect(board.board.size).to eq 3
    expect(board.board[0].size).to eq 3
    expect(board.board[1].size).to eq 3
    expect(board.board[2].size).to eq 3
  end

  describe '#show_game' do
    it 'shows an empty board at the start of a game' do
      expect(board.show_game).to eq [['-', '-', '-'], ['-', '-', '-'], ['-', '-', '-']]
    end
  end

  
end