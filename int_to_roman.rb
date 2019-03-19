def int_to_roman(num)
  thousands(num) + helper(num, 100, "C", "D", "M") + helper(num, 10, "X", "L", "C") + helper(num, 1, "I", "V", "X")
end

def thousands(num)
  'M'*(num/1000)
end

def helper(num, divisor, char1, char2, char3) 
  num = (num % (divisor * 10)) / divisor  
  if num < 4
    return char1 *num
  elsif num == 4
    return char1 + char2
  elsif num < 9
    return char2+char1*(num-5)
  else
    return char1 + char3 
  end
end
