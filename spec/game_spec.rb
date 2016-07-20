require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player1) {double :player, name: "Tim", healthpoints: 100}

  describe '#attack' do
    it 'reduces player_1 hp by 10' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end

end
