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

    def add_match_sign(number, position)
        return "" if @used_numbers.include?(number)
        if @secret_number.include?(number)
          @used_numbers << number
          return exact_match?(number, position) ? "+" : "-"
        end
        ""
    end

    def guess(input)
      result_signs = ""
      @used_numbers = ""

      return output.puts "Try guessing a number with four digits" if !right_size?(input.length)
      (0...input.length).each {|input_pos| result_signs << add_match_sign(input[input_pos], input_pos)}

      if @used_numbers.include?(input[3]) && exact_match?(input[3], 3)
        result_signs.sub!("-", "+")
      end
      output.puts result_signs.chars.sort.join
    end

  end
end
