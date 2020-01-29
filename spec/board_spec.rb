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

  describe '#player_1_symbol' do
    it 'assigns a given symbol to player one' do
      board.player_1_symbol("X")
      expect(board.p1_symbol).to eq "X"
    end

    it 'assigns a other symbol to player two' do
      board.player_1_symbol("X")
      expect(board.p2_symbol).to eq "O"
    end
  end

  describe '#player_1_move' do
    before(:each) do
      board.player_1_symbol("X")
    end

    it "fills in a selected cell with player one's move" do
      board.current_player_move("2,2")
      expect(board.show_game).to eq [['-', '-', '-'], ['-', 'X', '-'], ['-', '-', '-']]
    end
  end

  context 'When player one chooses X' do
    before(:each) do
      board.player_1_symbol("X")
    end

    it 'should assign X to player one' do
      expect(board.p1_symbol).to eq "X"
    end

    it 'should assign O to player two' do
      expect(board.p2_symbol).to eq "O"
    end
  end

  context 'When player one chooses O' do
    before(:each) do
      board.player_1_symbol("O")
    end

    it 'should assign O to player one' do
      expect(board.p1_symbol).to eq "O"
    end

    it 'should assign X to player two' do
      expect(board.p2_symbol).to eq "X"
    end
  end

  context 'When a game starts, and player 1 has made their move' do
    before(:each) do
      board.player_1_symbol("X")
    end
    
    it "should switch to player two's turn" do
      expect(board.current_turn).to eq "Player 1"
      board.current_player_move("2,1")
      expect(board.current_turn).to eq "Player 2"
    end
  end
end
