require 'byebug'
def roman_to_int(s)
  full_value = {"I"=> 1, "V"=> 5, "X"=> 10, "L"=> 50, "C"=> 100, "D"=> 500, "M"=> 1000}
  partial = {"IV"=> 4, "IX"=> 9, "XL"=> 40, "XC"=> 90, "CD"=> 400, "CM"=> 900}
  result = 0
  i = 0
  while i < s.length
  
    test = partial[s[i..i+1]]
    if test
      result += test
      i+=2
    else
      result += full_value[s[i]]
      i+=1
    end
  end
  result
end

puts roman_to_int("III")