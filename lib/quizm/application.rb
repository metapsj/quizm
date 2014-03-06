require 'optparse'

module Quizm

  class Application
    def initialize(argv)
      script_path = argv.size > 0 ? argv.shift : './example/quiz_script.rb'

      run File.read(script_path)
    end

    def run(script, filename = '__SCRIPT__')
      self.instance_eval script, filename
    end

    private 

    def parse_options(argv)
      puts 'Application::parse_options'
    end
  end

end