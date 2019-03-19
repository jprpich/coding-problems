require 'byebug'

def is_match(s, p)

  if (s == "" && p == "")
    return true 
  end
  if p[-1] && p[-1] != "." && p[-1] != "*" && p[-1] != s[-1]
    return false
  end
  if s  && p && p[0..1] == ".*"
    if s[0] && is_match(s[1..-1], p)
      return true 
    end
    if is_match(s, p[2..-1])
      return true 
    end
  end

  if s && p && p[0] != "." && p[1] == "*" 
    if p[0] == s[0] && is_match(s[1..-1], p)
      return true 
    end
    if is_match(s, p[2..-1])
      return true 
    end

  end

  if p && s && p[0] == "."
    if( is_match(s[1..-1],p[1..-1]))
      return true
    end
  end
  if s && p && s[0] == p[0] 
    if is_match(s[1..-1], p[1..-1])
      return true
    end
  end

  return false 
end
p is_match("aaaaaaaaaaaaab", "a*a*a*a*a*a*a*a*a*a*c")
# p is_match("aaa", "ab*a*c*a")
# p is_match("aa", "a*c*a")
# p is_match("bbbba", ".*a*a")



