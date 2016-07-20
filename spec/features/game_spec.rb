require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#attack' do
    let(:mike) { Player.new('Mike') }
    it 'deducts 10HP' do
      game.attack(mike)
      expect(mike.hit_points).to eq 90
    end
  end
end
