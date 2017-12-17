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

    def num_equal?(number, position)
      number == @secret_number[position]
    end
    def num_match(number, position)
      num_equal?(number, position) ? "+" : ""
    end

    def right_size?(number)
      number == 4
    end

    def guess(input)
      result_string = ""

      # if input.length != 4
      return output.puts "Try guessing a number with four digits" if !right_size?(input.length)
      # else
      # puts input
        for num in (0...input.length)
          match_symbol = num_match(input[num], num)
          if match_symbol == ""
            if @secret_number.include?(input[num])
              result_string << "-"
            else
              result_string << match_symbol
            end
          else
            result_string << match_symbol
          end
        end
        output.puts result_string
      # end



      # Make sure to replace next line with the actual implemented marking algorithm,
      # using the @secret_number

      # output.puts "you typed '#{input}'"
    end
  end
end
