require_relative 'question'
require_relative 'answer'

module Quizm
  module DSL

    Answer = ::Quizm::Answer
    Question = ::Quizm::Question

    def question(text)
      Quiz.instance.add_question Question.new(text)
    end

    def right(text)
      Quiz.instance.last_question.add_answer Answer.new(text, true)
    end

    def wrong(text)
      Quiz.instance.last_question.add_answer Answer.new(text, false)
    end

  end
end