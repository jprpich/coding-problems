def reverse(x)
  abs = x.abs.to_s.reverse.to_i
  
  if x < 0
      abs = -abs 
  end
  
  if abs > 2**31-1 || abs < -2**31
      return 0 
  end
  abs 
end