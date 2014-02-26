class Question
  def initialize(text)
    @text = text
    @answers = []
  end

  def add_answer(answer)
    @answers << answer
  end

  def ask
    puts ""
    puts "Question: #{@text}"

    @answers.each_with_index { |answer, index| puts "#{index+1} - #{answer.text}" }

    print "Enter answer: "
    answer = gets.to_i - 1

    @answers[answer].correct
  end
end
