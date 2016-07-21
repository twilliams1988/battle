require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double :player}
  let(:player_2) {double :player}


describe '#player_1' do
  it 'retrieves the first player' do
    expect(game.player_1).to eq player_1
  end
end

describe '#player_2' do
  it 'retrieves the second player' do
    expect(game.player_2).to eq player_2
  end
end


describe '#attack' do
    let(:mike) { Player.new('Mike') }
    it 'deducts 10HP' do
      game.attack(mike)
      expect(mike.hit_points).to eq 90
    end
  end

  describe '#current_player' do
    it 'starts as player 1' do
      expect(game.current_player).to eq player_1
    end
  end

  describe '#gameover' do
    it 'confirms game is over when a player reaches 0HP' do
      #sign_in_and_play
      allow(player_1).to receive(:hit_points).and_return(0)
      allow(player_2).to receive(:hit_points).and_return(0)
      # visit('/')
      # fill_in :player_1_name, with: ''
      # fill_in :player_2_name, with: 'Player 2'
      # click_button 'Submit'
      #19.times{attack_and_confirm}
      expect(game.gameover).to be true
    end
  end


end