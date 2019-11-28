require 'player'

describe Player do
  subject(:player) { Player.new("Jamie") }

  it "should have a name" do
    expect(player).to have_attributes(name: "Jamie")
  end

end