class Turn
  attr_reader :question

  # Each turn is associated with a player and a new question (which has the question and answer)
  def initialize player
    @player = player
    @question = Question.new()
  end

  # Each turn consists of asking the current player the question, getting and validating their answer
  def run
    puts "------------------ NEW TURN ------------------"
    ask_question
    get_answer
    validate_answer
  end

  def ask_question
    puts "#{@player.name}: #{@question.question}"
  end

  def get_answer
    print "> "
    @guess = $stdin.gets.chomp.to_i
  end

  def validate_answer
    if @guess == @question.answer
      puts "#{@player.name}: YES! You are correct."
    else
      puts "#{@player.name}: Seriously? NO!"
      @player.lose_life
    end
  end
end