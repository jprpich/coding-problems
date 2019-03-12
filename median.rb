require 'byebug'
def find_median_sorted_arrays(nums1, nums2)
  size = nums1.length + nums2.length 
  even = size % 2 == 0 
  mid = (size / 2)  
  counter = 0
  median = 0 
  median2 = 0 
  while counter < mid 
    if (!nums1.empty? && !nums2.empty?)
      median2 = nums1[0] < nums2[0] ? nums1.shift : nums2.shift 
    else
      median2 = nums1.empty? ? nums2.shift : nums1.shift 
    end
    counter += 1 
  end

  if (!nums1.empty? && !nums2.empty?)
    median = nums1[0] < nums2[0] ? nums1.shift : nums2.shift 
  else
    median = nums1.empty? ? nums2.shift : nums1.shift 
  end

  if even 
    median = (median + median2) / 2.0 
  end
  return median 
end

p find_median_sorted_arrays([1,2], [3,4])