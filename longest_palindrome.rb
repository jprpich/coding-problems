def longest_palindrome(str)
  i = str.length 
  while i > 0 
    j = 0
    while j <= str.length - i 
      if palindrome?(str[j..j+i-1])
        return str[j..j+i-1]
      end
      j += 1
    end
    i -= 1 
  end
  return ""   
end

def palindrome?(str)
  str == str.reverse
end

puts longest_palindrome("babad")