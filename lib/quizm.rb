require_relative 'quizm/quiz'
require_relative 'quizm/question'
require_relative 'quizm/answer'

def question(text)
  Quiz.instance.add_question Question.new(text)
end

def right(text)
  Quiz.instance.last_question.add_answer Answer.new(text, true)
end

def wrong(text)
  Quiz.instance.last_question.add_answer Answer.new(text, false)
end

load './quizzes/questions.rb'

Quiz.instance.run_quiz
