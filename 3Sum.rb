require 'set'
require 'byebug'
# def three_sum(nums)
#   i = 0
    # result = []
#   while i< nums.length-2
#     j = i+1
#     while j < nums.length -1
#       z = j+1
#       while z < nums.length
#         if nums[i]+nums[j]+nums[z] == 0
#           result << [nums[i], nums[j], nums[z]]
#         end
#         z += 1
#       end
#       j += 1

#     end
#     i += 1

#   end
#   result
    
# end

def three_sum(nums)
  hash = Hash.new{|k,v| k[v]=[]}
  nums.each_with_index do |num, idx|
    hash[num] << idx
  end
  result = []
  i = 0

  while i< nums.length-1
    j = i+1
    while j < nums.length
      dif = -(nums[i]+nums[j])
      if hash[dif] != [] && hash[dif] != [i] && hash[dif] != [j] && hash[dif] != [i, j]
        arr = [nums[i], nums[j], dif].sort
        if !result.include?(arr)
          result.push(arr)
        end
      end
      j += 1
    end
    i+=1
  end
  result
end
  
    
p three_sum([-1,0,1,2,-1,-4])