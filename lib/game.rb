class Game
  attr_reader :player_1, :player_2, :player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player = player_1
    @other_player = player_2
  end

  def attack
    @other_player.reduce_hp(10)
    switch_turn
  end

  def switch_turn
    @player, @other_player = @other_player, @player
  end
end
