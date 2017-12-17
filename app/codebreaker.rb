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
    end

    def num_equal?(number, position)
      number == @secret_number[position]
    end

    def right_size?(number)
      number == 4
    end

    def get_match_char(number, position)
      match_char = ""
      if @secret_number.include?(number)
        if num_equal?(number, position)
          match_char = "+"
        else
          match_char = "-"
        end
      else
        # match_char = "_"
      end
      return match_char
    end

    def guess(input)
      result_string = ""

      return output.puts "Try guessing a number with four digits" if !right_size?(input.length)
        for num_pos in (0...input.length)
          result_string << get_match_char(input[num_pos], num_pos)

        end

        output.puts result_string.chars.sort.join

    end
  end
end
