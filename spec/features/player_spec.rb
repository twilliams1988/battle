require 'player'

describe Player do
  subject(:players) { Player.new('Player 1') }

  describe '#name' do
    it 'returns the name' do
      expect(players.name).to eq 'Player 1'
    end
  end

  describe '#hit_points' do
    it 'returns the number of hit points' do
      expect(players.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    let(:mike) { Player.new('Mike') }
    it 'deducts 10HP' do
      players.attack(mike)
      expect(mike.hit_points).to eq 90
    end
  end
end
