def three_sum(nums):
  result = []
  seen_already = set()
  for i in range(len(nums)):
    num = nums[i]
    if not num in seen_already:
      seen_already.add(num)
      arr = []
      if i == len(nums)-1:
        arr = nums[0:-1]
      else: 
        arr = nums[0:i]+nums [i+1:]
      valid_combos = two_sum(arr, -num)
      for combo in valid_combos:
        combo.append(num)
        combo.sort()
      for j in range(len(valid_combos)):
        combo = valid_combos[j]
        if not combo in result:
          result.append(combo)

  return result


def two_sum(nums, target):
  s = set()
  result = []
  for i in range(len(nums)):
    num = nums[i]
    if target-num in s:
      result.append([num, target-num])
    else:
      s.add(num)
      
  return result

print( three_sum([-1,0,1,2,-1,-4]) )
