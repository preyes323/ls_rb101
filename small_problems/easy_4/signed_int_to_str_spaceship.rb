DIGIT_STRINGS = %w(0 1 2 3 4 5 6 7 8 9).freeze

def integer_to_string(input)
  result = input.zero? ? '0' : ''
  while input > 0
    result = DIGIT_STRINGS[input % 10] + result
    input /= 10
  end
  result
end

def signed_integer_to_string(input)
  sign = case input <=> 0
         when -1 then '-'
         when +1 then '+'
         else ''
         end
  integer_to_string(input.abs).prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
