  require 'rspec'

class FizzBuzz

  def check number
    result = ""
    if number.to_s[0] == "2"
      result = "Vodafone"
    else
      if number % 7 == 0
            result = "Nike"
        else
          if number % 3 == 0
            result += "Fizz"
          end

          if number % 5 == 0
            result += "Buzz"
          end

          if result == ""
            result = number
          end
          result
      end
    end
  end

end


