module Quizm
  module Answer

    def right(text)
      Quiz.instance.last_question.add_answer Answer.new(text, true)
    end

    def wrong(text)
      Quiz.instance.last_question.add_answer Answer.new(text, false)
    end

    class Answer
      attr_reader :text, :correct

      def initialize(text, correct)
        @text = text
        @correct = correct
      end
    end

  end
end
