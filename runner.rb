# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].



# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

test_array1 = [2, 7, 11, 15]
target1 = 9
solution_array1 = [0, 1]

test_array2 = [3, 72, 19, 34, 9, 28, 12, 1, 42]
target2 = 62
solution_array2 = [3, 5]


def two_sum(nums, target)
  # iterate through array
  #  for each iteration, iterate again looking for the counterpart to equal target
  # If counterpart is found, return array consisting of [index of first number, index of counterpart]
  nums.each_index do |first_number_index|
    nums.each_index do |second_number_index|
      if first_number_index != second_number_index
        return [first_number_index, second_number_index] if nums[first_number_index] + nums[second_number_index] == target
      end
    end
  end
end

# puts "Testing!"
# puts two_sum(test_array1, target1) == solution_array1
# puts two_sum(test_array2, target2) == solution_array2
# puts "All done!"