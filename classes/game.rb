class Game
  attr_accessor :player_1, :player_2

  # Each game consists of 2 players and keeping track of the current player
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @player1_turn = true; # true -> player1's turn, false -> player2's turn
  end

  # Running the game consists of starting the game, running the game loop and ending the game
  def run
    start_game
    game_loop
    end_game
  end

  # Start the game by welcoming players
  def start_game
    puts "----- WELCOME TO twO-O-Player MATH GAME! -----"
    puts "#{@player1.name} vs #{@player2.name} 🥊 Game on!\n\n"
  end

  # Game loop that runs one turn per loop while switching players and checking if the game is over
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
  end

  # game_loop helper to display scores of users at the end of each round
  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  # game_loop helper to check if game is over
  def game_over? 
    @player1.is_dead? || @player2.is_dead?
  end

  # game_loop helper to switch players
  def switch_players
    @player1_turn = !@player1_turn
  end

  # Display results one the game is over
  def end_game
    puts "------------------ GAME OVER -----------------"
    puts @player1.is_dead? ? "Player 2 wins with a score of #{@player2.lives}/3" : "Player 1 wins with a score of #{@player1.lives}/3"
    puts "Good bye!"
  end
end