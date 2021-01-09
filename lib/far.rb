class String
  def find_and_replace(pattern, replacement)
    # Recursive version.  
    
    return self if self.length < pattern.length

    return replacement + self[pattern.length..].find_and_replace(pattern, replacement) if self[0, pattern.length] == pattern

    return self[0] + self[1..].find_and_replace(pattern, replacement)
  end
end
