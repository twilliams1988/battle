require 'player'

describe Player do
  subject(:players) { Player.new('Player 1') }

  describe '#name' do
    it 'returns the name' do
      expect(players.name).to eq 'Player 1'
    end
  end
end
