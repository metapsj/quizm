require 'singleton'

module Quizm
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

    def run
      count = 0
      @questions.each { |q| count +=1 if q.ask }
      
      puts
      puts "You got #{count} answers correct out of #{@questions.size}."
      puts 
    end
  end
end
