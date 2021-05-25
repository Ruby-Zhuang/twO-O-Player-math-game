class Game
  attr_accessor :player_1, :player_2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @player1_turn = true;
  end

  def start
    puts "----- WELCOME TO twO-O-Player MATH GAME! -----"
    puts "#{@player1.name} vs #{@player2.name} 🥊 Game on!\n\n"

    game_loop
  end

  def game_loop
    game_over = false;
    
    while !game_over
      # Start a new turn with the current player
      turn = Turn.new(@player1_turn ? @player1 : @player2)
      turn.run

      # Display scores and check if game is over
      display_scores
      switch_players
      game_over = game_over?
    end

    end_game
  end

  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def game_over? 
    @player1.is_dead? || @player2.is_dead?
  end

  def switch_players
    @player1_turn = !@player1_turn
  end

  def end_game
    puts "------------------ GAME OVER -----------------"
    if @player1.is_dead?
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    else
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end
    puts "Good bye!"
  end
end