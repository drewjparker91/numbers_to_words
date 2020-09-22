class Number
  def initialize(number)
    @number = number
    @word = []
  end

def numbers_to_words
  ones = {
    "9" => "nine",
    "8" => "eight",
    "7" => "seven",
    "6" => "six",
    "5" => "five",
    "4" => "four",
    "3" => "three",
    "2" => "two",
    "1" => "one"
  }

  teens = {
    "19" => "nineteen",
    "18" => "eighteen",
    "17" => "seventeen", 
    "16" => "sixteen",
    "15" => "fifteen",
    "14" => "fourteen",
    "13" => "thirteen",              
    "12" => "twelve",
    "11" => "eleven",
  }
      
  tens = {
    "90" => "ninety",
    "80" => "eighty",
    "70" => "seventy",
    "60" => "sixty",
    "50" => "fifty",
    "40" => "forty",
    "30" => "thirty",
    "20" => "twenty",      
    "10" => "ten",
  }

  hundreds = {
    "100" => "one hundred",
    "200" => "two hundred",
    "300" => "three hundred",
    "400" => "four hundred",
    "500" => "five hundred",
    "600" => "six hundred",
    "700" => "seven hundred",
    "800" => "eight hundred",
    "900" => "nine hundred"
  }

  thousands = {
    "1000" => "one thousand",
    "2000" => "two thousand",
    "3000" => "three thousand",
    "4000" => "four thousand",
    "5000" => "five thousand",
    "6000" => "six thousand",
    "7000" => "seven thousand",
    "8000" => "eight thousand",
    "9000" => "nine thousand"
  }

    number = @number.chars
      if(number.length == 4)
        number_ones = ones.fetch(number[3])
        number_tens = tens.fetch(number[2].concat("0"))
        number_hundreds = hundreds.fetch(number[1].concat("00"))
        number_thousands = thousands.fetch(number[0].concat("000"))
        word = number_thousands + " " + number_hundreds + " " + number_tens + " " + number_ones
      elsif (number.length == 3)        
        number_ones = ones.fetch(number[2])
        number_tens = tens.fetch(number[1].concat("0"))
        number_hundreds = hundreds.fetch(number[0].concat("00"))
        word = number_hundreds + " " + number_tens + " " + number_ones
      elsif (number.length == 2)
        if (number.include?("0"))
          word = tens.fetch(@number)
        elsif (number.include?("1"))
          word = teens.fetch(@number)
        else 
          number_ones = ones.fetch(number[1])
          number_tens = tens.fetch(number[0].concat("0"))
          word = number_tens + " " + number_ones
        end
      elsif (number.length == 1)
        word = ones.fetch(@number)
      end    
  end
end

  # elsif number.length == 2
  #   tens.fetch(number[2])
  # elsif number.length == 3
  #   hundreds.
 

# numbers_to_words("25")


# else 
#   ones = ones.fetch(number[1])
#   tens = tens.fetch(number[0])
#   number.concat.push

#   43





# if number.length = 1
#   number_to_name.fetch(number)

# elsif number.length = 2
#   if (number.include?(0))
#     return number_number_to_name.fetch