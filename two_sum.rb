# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

def two_sum(arr, target) 
  hash = {}
  
  i = 0
  for val in arr do
    val1 = arr[i]
    val2 = target - val1 
    if hash[val2] 
      return [hash[val2], i]
    else
      hash[val1] = i 
    end
    i += 1
  end

  nil 
end

p two_sum([2,7,11,15], 9)