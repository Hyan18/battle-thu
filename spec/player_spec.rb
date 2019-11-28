require 'player'

describe Player do
  subject(:player_1) { Player.new("Jamie") }
  subject(:player_2) { Player.new("Harrison") }

  it "should have a name" do
    expect(player_1).to have_attributes(name: "Jamie")
  end

  describe "#reduce_hp" do
    it "should reduce the player's hp by 10" do
      expect { player_1.reduce_hp(10) }.to change { player_1.hp }.by -10
    end
  end

  describe "#attack" do
    it "should reduce hp when attacked" do
      expect { player_1.attack(player_2) }.to change { player_2.hp }.by -10
    end
  end

end