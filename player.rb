class Player
  attr_reader :lives

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def die?
  @players.any? { |p| p.lives <= 0 }
  puts "----- Game Over! -----"

  end

end
