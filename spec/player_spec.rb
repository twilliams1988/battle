require 'player'

describe Player do
  let(:name){double :name}
  let(:hit_points){double :hit_points}
  subject{described_class.new(name)}

  it 'returns player name' do
    expect(subject.name).to eq name
  end

  it 'returns player default HP' do
    expect(subject.hit_points).to eq Player::DEFAULT_HIT_POINTS
  end
end
