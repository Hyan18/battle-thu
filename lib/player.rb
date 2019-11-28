class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(other_player)
    other_player.reduce_hp(10)
  end

  def reduce_hp(amount)
    @hp -= amount
  end

end
