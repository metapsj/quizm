require_relative 'quizm/version'
require_relative 'quizm/application'
require_relative 'quizm/quiz'
require_relative 'core_ext/object'

app = Quizm::Application.new(ARGV)

Quizm::Quiz.instance.run
