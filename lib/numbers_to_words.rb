class Fixnum

  define_method(:numbers_to_words) do

    final_word = []

    ones_values = { "1" => "one", "2" => "two", "3" => "three", "4" => "four",
                    "5" => "five", "6" => "six", "7" => "seven", "8" => "eight",
                    "9" => "nine" }

    tens_values = { "1" => "one", "2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy",
                    "8" => "eighty", "9" => "ninety"}

    hundreds_values = { "1" => "one hundred", "2" => "two hundred", "3" => "three hundred", "4" => "four hundred",
                        "5" => "five hundred", "6" => "six hundred", "7" => "seven hundred", "8" => "eight hundred",
                        "9" => "nine hundred" }

    numbers = self.to_s().split("").reverse().each_with_index() do |number, index|

      case index

      when 0, 3, 6, 9, 12
        word = ones_values[number]
        if index == 3
          word += " thousand"
        elsif index == 6
          word += " million"
        elsif index == 9
          word += " billion"
        elsif index == 12
          word += " trillion"
        end
      when 1, 4, 7, 10
        word = tens_values[number]
      when 2, 5, 8, 11
        word = hundreds_values[number]
      end

      final_word.push(word)
    end

    unclean_word = final_word.reverse()

    unless unclean_word.count == 1
      cleaned_word = unclean_word.join(' ').gsub!(/\s+/, ' ')
      cleaned_word.gsub!("one one", "eleven")
      cleaned_word.gsub!("one two", "twelve")
      cleaned_word.gsub!("one three", "thirteen")
      cleaned_word.gsub!("one four", "fourteen")
      cleaned_word.gsub!("one five", "fifteen")
      cleaned_word.gsub!("one six", "sixteen")
      cleaned_word.gsub!("one seven", "seventeen")
      cleaned_word.gsub!("one eight", "eighteen")
      cleaned_word.gsub!("one nine", "nineteen")
    end

    if cleaned_word
      cleaned_word
    else
      unclean_word.join('')
    end
  end

end
