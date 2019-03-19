# This solution works 
# def max_area(height) 
#   i = 0 
#   max = 0 
#   while i < height.length - 1 
#     j = i + 1 
#     while j < height.length 
#       area = (j-i) * ([height[j], height[i]].min) 
#       if area > max 
#         max = area 
#       end 
#       j += 1 
#     end 
#     i +=1 
#   end 
#   return max  
# end 

# This solution does not work yet 
def max_area(height) 
  lower_bound = lower_bound(height) 
  upper_bound = upper_bound(height) 
  (upper_bound - lower_bound) * [height[lower_bound], height[upper_bound]].min
end

def lower_bound(height)
  i = 0
  max = 0
  index = 0
  while i < height.length 
    difference = height[i] * (height.length - 1 - (2*i))  
    if difference > max 
      max = difference 
      index = i 
    end 
    i += 1 
  end
  return index 
end

def upper_bound(height) 
  i = 0 
  max = 0 
  index = 0 
  while i < height.length 
    area = height[i] * (i) 
    if area >= max 
      max = area 
      index = i
    end 
    i += 1 
  end
  
  return index 
end

# p max_area([1,8,6,2,5,4,8,3,7])
p max_area([1,2,1])