class Game
  attr_accessor :player_1, :player_2, :current_turn

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    current_player = 1;
  end

  def start
    puts "----- WELCOME TO twO-O-Player MATH GAME! -----"
    puts "#{player_1.name} vs #{player_2.name} 🥊 Game on!"

    # while game isn't over
    # player 1 turn
    current_player = 1 ? turn = Turn.new(@player_1) : turn = Turn.new(@player_2)
    turn.start_turn
    
    # answer question
    # get answer
    # check answer
    # Display score
    # check if gamer over (with current player)
    # switch players
    # new turn or game over
    # Good bye!

  end
end