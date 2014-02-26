require 'singleton'

class Quiz
  include Singleton

  def initialize
    @questions = []
  end

  def add_question(question)
    @questions << question
  end

  def last_question
    @questions.last
  end

  def run_quiz
    count = 0
    @questions.each { |q| count +=1 if q.ask }
    puts "You got #{count} answers correct out of #{@questions.size}."
  end
end
