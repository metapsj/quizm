require_relative 'quizm/version'
require_relative 'quizm/application'
require_relative 'quizm/quiz'
require_relative 'core_ext/object'

App = Quizm::Application.new(ARGV).run
