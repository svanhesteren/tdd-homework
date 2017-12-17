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

    def exact_match?(number, position)
      number == @secret_number[position]
    end

    def right_size?(number)
      number == 4
    end



    def get_match_char(number, position)
      match_char = ""
      return "" if @used_numbers.include?(number)

      if @secret_number.include?(number)
        @used_numbers << number
        if exact_match?(number, position)
          match_char = "+"
        else
          match_char = "-"
        end
      end
      match_char
    end

    # def check_last_num_override(number)
    #   if @used_numbers.include?(number) &&
    # end

    def guess(input)
      result_string = ""
      @used_numbers = ""
      return output.puts "Try guessing a number with four digits" if !right_size?(input.length)
      for num_pos in (0...input.length)

        result_string << get_match_char(input[num_pos], num_pos)
        # result_string = check_last_num_override(number) if num_pos == 3
      end
        output.puts result_string.chars.sort.join
    end

  end
end
