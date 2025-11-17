# @param {String} s
# @return {Boolean}
def is_valid(s)
  closing_bracket_by_opening_bracket = {
    "(" => ")",
    "[" => "]",
    "{" => "}",
  }
  stack = []
  s.each_char do |character|
    if closing_bracket_by_opening_bracket.include?(character)
      stack.push(character)
    elsif stack.empty? or character != closing_bracket_by_opening_bracket[stack.pop()]
      return false
    end
  end
  return stack.length == 0
end
