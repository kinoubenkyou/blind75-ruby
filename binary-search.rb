# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  start, stop = 0, nums.length
  while true
    median_index = start + (stop - start) / 2
    median = nums[median_index]
    if median == target
      return median_index
    elsif median > target
      if median_index == start
        return -1
      end
      stop = median_index
    else
      if median_index == stop - 1
        return -1
      end
      start = median_index + 1
    end
  end
end
