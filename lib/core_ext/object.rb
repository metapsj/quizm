require_relative '../quizm/question'
require_relative '../quizm/answer'

class Object
  include Quizm::Question, Quizm::Answer
end
