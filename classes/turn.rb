class Turn
  attr_reader :question

  def initialize player
    @player = player
    @question = Question.new()
  end

  def start_turn
    ask_question
    get_answer
    validate_answer
  end

  def ask_question
    puts "#{@player.name}: #{@question.question}"
  end

  def get_answer
    print "> "
    @guess = $stdin.gets.chomp
  end

  def validate_answer
    puts @guess
  end
end