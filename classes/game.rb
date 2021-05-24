class Game
  attr_accessor :player_1, :player_2, :current_turn

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = 1
  end

  def start
    puts "----- WELCOME TO twO-O-Player MATH GAME! -----"
    puts "#{player_1.name} vs #{player_2.name} 🥊 Game on!"
    # puts player_1.lose_life
    # puts player_2.lives
  end
end