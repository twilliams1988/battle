require 'game'

describe Game do
  subject(:game) {described_class.new(player1,player2)}
  let(:player1) {double :player, name: "Tim", healthpoints: 100}
  let(:player2) {double :player, name: "Mali", healthpoints: 100}
  let(:player3) {double :player, name: "Tommy", healthpoints: 0}

  describe '#attack' do
    it 'reduces player_1 hp by 10' do
      allow(player2).to receive(:receive_damage)
      expect(player2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#switch_turn' do
    it 'switches players after an attack' do
      expect(game.switch_turn).to eq [player2,player1]
    end
  end

  describe '#loser' do
    it 'when attacked player reaches 0hp assign that player to loser' do
      game = Game.new(player1,player3)
      expect(game.loser).to eq player3
    end
  end

end
