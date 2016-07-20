require 'player'

describe Player do
  let(:name){double :name}
  let(:hit_points){double :hit_points}
  # subject{described_class.new(name)}
  subject(:player_1) { described_class.new('Player 1') }
  subject(:player_2) { described_class.new('Player 2') }

  it 'returns player name' do
    expect(player_1.name).to eq 'Player 1'
  end

  it 'returns player default HP' do
    expect(player_1.hit_points).to eq Player::DEFAULT_HIT_POINTS
  end

  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    player_1.attack(player_2)
  end

  it 'reduces player hit points' do
    expect{ player_2.receive_damage }.to change { player_2.hit_points }.by(-10)
  end
end
