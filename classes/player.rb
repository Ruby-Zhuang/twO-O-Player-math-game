class Player
  attr_reader :name
  attr_accessor :lives

  LIVES = 3

  def initialize(name)
    @name = name
    @lives = LIVES
  end

  def lose_life
    @lives -= 1 #is it self or @? both seem to do same thing
  end

  def lost_game
    @lives == 0 # returns true if number of lives is 0
  end
end