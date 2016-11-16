
class Player
  attr_reader :lives, :id

  @@id = 1

  def initialize
    @id = @@id
    @@id = @@id + 1
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end
