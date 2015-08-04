class Fixnum

  define_method(:numbers_to_words) do

    final_word = []

    tens_values = { "1" => "one", "2" => "two", "3" => "three", "4" => "four",
                    "5" => "five", "6" => "six", "7" => "seven", "8" => "eight",
                    "9" => "nine" }

    # Convert the number string into individual numbers that are numbers
    numbers = self.to_s().split("").each_with_index() do |number, index|
      final_word.push(tens_values[number])

    end

    final_word.join(' ')
  end

end
