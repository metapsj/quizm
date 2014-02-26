require 'quiz'
require 'question'
require 'answer'

def question(text)
  Quiz.instance.add_question Question.new(text)
end

def right(text)
  Quiz.instance.last_question.add_answer Answer.new(test, true)
end

def wrong(text)
  Quiz.instance.last_question.add_answer Answer.new(text, fase)
end

load 'questions.rb'

Quiz.instance.run_quiz
