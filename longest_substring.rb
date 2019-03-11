require ("set")

a = "abcabcd"



def length_of_longest_substring(str)
  result = 0
  i= 0
  while i < str.length
    count = longest(str[i..-1])
    if count > result
      result = count
    end
    i+=1
  end
  result
end

def longest(str)
  set = Set.new()
  i = 0
  while i<str.length && !set.include?(str[i])
    set.add(str[i])
    i+=1
  end
  set.size
end

puts length_of_longest_substring(a)