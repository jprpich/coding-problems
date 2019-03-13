require "byebug"

def convert(str, num)
  return str if num == 1
  arr = Array.new(num) {Array.new([])}
  down = true
  i=0
  j=0
  str.each_char do |letter|
    if down
      arr[i][j] = letter
      i+=1
      if i== num
        down = false
        i-=1

      end
    else
      i-=1
      j+=1
      arr[i][j] = letter
      if i==0
        down = true 
        i+=1
      end
    end
  end
  result = ""
  arr.each do |sub|
    sub.each do |sub2|
        if sub2
            result += sub2
        end
    end
            
  end
  result

end

puts convert("PAYPALISHIRING", 3)