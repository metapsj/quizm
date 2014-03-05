require_relative 'quizm/quiz'
require_relative 'quizm/question'
require_relative 'quizm/answer'
require_relative 'quizm/dsl'

if ARGV.size > 0
  questions_path = ARGV.shift
else
  questions_path = './quizzes/questions.rb'
end

load questions_path

Quizm::Quiz.instance.run
