require 'byebug'
def my_atoi(str)
  if str == "" 
      return 0
  end
  digits = "1234567890"
  str = str.strip
if str == "" 
      return 0
  end
  if(str[0] != "+" && str[0] != "-") && !digits.include?(str[0])
    return 0
  end
  
  result = "" 
  str.each_char.with_index do |char, idx| 
    if !digits.include?(char) && (char != "+" && char != "-")
      result = str[0...idx] 
      # break 
    end
    result = str[0..idx] 
  end
  if result == ""
      return 0 
  end
  if result.to_i < -2**31 
      return -2**31 
  elsif result.to_i > 2 ** 31-1
      return 2 ** 31 -1
  end
      
  result.to_i
end

puts my_atoi("-1234asdfasd")