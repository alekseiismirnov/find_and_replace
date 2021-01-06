class String
  def find_and_replace(pattern, replacement)
    return self.split(' ')
      .map {|w| w == pattern ? replacement : w}
      .join(' ')
  end
end
