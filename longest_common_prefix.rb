def longest_common_prefix(strs)
  result = strs[0]
  strs.each do |str|
    result = helper(result, str)
  end
  result || ""
  
end

def helper(str1, str2)
  i = 0
  result = ""
  while i < str1.length
    if str1[i] != str2[i]
      return result
    else
      result += str1[i]
    end
    i+=1
  end
  result
end

p longest_common_prefix(["flower","flow","flight"])