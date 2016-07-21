require 'player'

describe Player do

  subject(:player) {described_class.new "Tommy"}

  describe '#initialize' do
    it 'will return the requested player name' do
      expect(player.name).to eq "Tommy"
    end
    it 'will return the requested player healthpoints' do
      expect(player.healthpoints).to eq 100
    end
  end

end
