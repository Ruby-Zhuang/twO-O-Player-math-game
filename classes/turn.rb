class Turn
  attr_reader :question

  def initialize player
    @player = player
    @question = Question.new()
  end

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
      puts "#{@player.name}: Seriously? No!"
      @player.lose_life
    end
  end
end