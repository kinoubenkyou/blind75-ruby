# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  if s.length != t.length
    return false
  end
  frequencies = Array.new(26, 0)
  s.each_char do |character|
    frequencies[character.ord - 97] += 1
  end
  t.each_char do |character|
    frequencies[character.ord - 97] -= 1
  end
  frequencies.each do |frequency|
    if frequency != 0
      return false
    end
  end
  return true
end
