# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  index_by_value = {}
  nums.each_with_index do |value, index|
    complement_value = target - value
    if index_by_value.include?(complement_value)
      return [index, index_by_value[complement_value]]
    end
    if !index_by_value.include?(value)
      index_by_value[value] = index
    end
  end
end
