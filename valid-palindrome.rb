# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  normalized = []
  s.each_char do |character|
    code_point = character.ord
    if 65 <= code_point && code_point <= 90
      normalized.push(code_point + 32)
    elsif (48 <= code_point && code_point <= 57) || (97 <= code_point && code_point <= 122)
      normalized.push(code_point)
    end
  end
  (0...(normalized.length / 2)).each do |index|
    if normalized[index] != normalized[normalized.length - 1 - index]
      return false
    end
  end
  return true
end
