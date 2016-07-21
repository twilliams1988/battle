require 'game'

describe Game do
  subject(:game) {described_class.new(player1,player2)}
  let(:player1) {double :player, name: "Tim", healthpoints: 100}
  let(:player2) {double :player, name: "Mali", healthpoints: 100}

  describe '#attack' do
    it 'reduces player_1 hp by 10' do
      allow(player2).to receive(:receive_damage).and_return(90)
      expect(player2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#switch_turn' do
    it 'switches players after an attack' do
      expect(game.switch_turn).to eq [player2,player1]
    end
  end


end
