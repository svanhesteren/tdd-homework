class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"

      # output.puts "Try guessing a number with four digits"
    end

    def guess(input)

      if input.length != 4
        output.puts "Try guessing a number with four digits"
      end
      # Make sure to replace next line with the actual implemented marking algorithm,
      # using the @secret_number

      # output.puts "you typed '#{input}'"
    end
  end
end
