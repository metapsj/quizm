require 'optparse'

module Quizm

  class Application
    attr_accessor :script, :script_path

    def initialize(argv)
      Quiz.instance

      @script_path = argv.size > 0 ? argv.shift : './example/quiz_script.rb'

      @script = File.read(@script_path)
    end

    def run
      self.instance_eval @script, @script_path
      
      Quiz.instance.run
    end

    private 

    def parse_options(argv)
      puts 'Application::parse_options'
    end
  end

end