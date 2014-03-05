module Kernel
    def question(text)
      Quizm::Quiz.instance.add_question Quizm::Question.new(text)
    end

    def right(text)
      Quizm::Quiz.instance.last_question.add_answer Quizm::Answer.new(text, true)
    end

    def wrong(text)
      Quizm::Quiz.instance.last_question.add_answer Quizm::Answer.new(text, false)
    end
end
