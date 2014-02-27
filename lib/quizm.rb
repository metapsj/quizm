require_relative 'quizm/quiz'
require_relative 'quizm/question'
require_relative 'quizm/answer'

if ARGV.size > 0
  questions_path = ARGV.shift
else
  questions_path = './quizzes/questions.rb'
end

def question(text)
  Quiz.instance.add_question Question.new(text)
end

def right(text)
  Quiz.instance.last_question.add_answer Answer.new(text, true)
end

def wrong(text)
  Quiz.instance.last_question.add_answer Answer.new(text, false)
end

load questions_path

Quiz.instance.run
