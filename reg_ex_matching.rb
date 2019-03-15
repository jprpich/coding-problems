require 'byebug'
def is_match(s,p) 
  match(s,p,"", []) 
end

def match(s, p, last_char, arr)
  
  if (s == "" && p == "")
    return true 
  end

  if s && p && s[0] == p[0] 
    if match(s[1..-1], p[1..-1], s[0], [])
      return true
    end
  end
  if p && p[0..1] == ".*"
    if match(s, p[1..-1], "",("a".."z").to_a)
      return true 
    end
  end

  if p && s && p[0] == "."
    if( match(s[1..-1],p[1..-1], s[0], []))
      return true
    end
  end

  if p && s && p[0] == "*"
    if (last_char == s[0] || arr.include?(s[0])) 
      if match(s[1..-1], p[1..-1], s[0], [])
        return true 
      elsif match(s[1..-1],p, s[0], arr)
        return true 
      end
    else 
      if match(s, p[1..-1], last_char, []) 
        return true 
      end
    end
  end

  if p && p[1] == "*" 
    if match(s, p[2..-1], "", [])
      return true 
    end
  end

  
  return false 
end

p is_match("aaa", "ab*a*c*a")
# p is_match("a", "*c*a")


