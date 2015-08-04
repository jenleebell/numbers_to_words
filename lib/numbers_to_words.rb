class Fixnum

  define_method(:numbers_to_words) do

    final_word = []

    ones_values = { "1" => "one", "2" => "two", "3" => "three", "4" => "four",
                    "5" => "five", "6" => "six", "7" => "seven", "8" => "eight",
                    "9" => "nine" }

    tens_values = {"2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}



    # Convert the number string into individual numbers that are numbers
    numbers = self.to_s().split("").reverse.each_with_index() do |number, index|


      case index
      when 0
        word = ones_values[number]
      when 1
        word = tens_values[number]
      end

      final_word.push(word)
    end

    final_word.reverse().join(' ')
  end

end

# final_word.push(ones_values[number])
