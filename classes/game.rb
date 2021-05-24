class Game
  attr_accessor :player_1, :player_2, :current_turn

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = 1;
  end

  def start
    puts "----- WELCOME TO twO-O-Player MATH GAME! -----"
    puts "#{@player1.name} vs #{@player2.name} 🥊 Game on!\n\n"

    game_loop
  end

  def game_loop
    # while game isn't over
    # player 1 turn
    game_over = false;

    while !game_over
      (@current_player == 1) ? turn = Turn.new(@player1) : turn = Turn.new(@player2)
      turn.start_turn
      display_scores
      game_over = game_over?
      switch_players
      puts game_over
    end

    puts "GAME OVER"
    # check if gamer over (with current player)
    # switch players
    # new turn or game over
    # Good bye!
  end

  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def game_over? 
    @player1.is_dead? || @player2.is_dead?
  end

  def switch_players
    @current_player = (@current_player + 1) % 2 #1 for player1 and 0 for player2
  end
end