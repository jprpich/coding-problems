def threeSumClosest(nums, target):
  closest = nums[0]
  
  two_sum = two_sum_helper()
  if two_sum<closest:
    closest = two_sum
  closest
