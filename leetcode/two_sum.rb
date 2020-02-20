module Leetcode
  module TwoSum
    LINK = 'https://leetcode.com/problems/two-sum/'

    array_solution = Module.new do
      def call(nums, target)
        index = 0
        result = nil

        for num in nums
          next_index = index + 1
          inner_index = index

          for inner_num in nums[next_index..-1]
            inner_index +=  1
            sum = num + inner_num

            if sum == target
              result = [index, inner_index]
            end
          end

          index += 1
        end

        return "Unable to find sum" if result.nil?

        result
      end
    end

    hash_solution = Module.new do
      def call(nums, target)
        index_num_hash = {}
        result = nil

        index = 0
        for num in nums
          index_num_hash[num] = index
          index += 1
        end

        index = 0
        for num in nums
          complement = target - num

          if index_num_hash.has_key?(complement) && index_num_hash[complement] != index
            result = [index_num_hash[complement], index]
          end

          index += 1
        end

        result
      end
    end

    #extend(array_solution)
    extend(hash_solution)
  end
end

a = [1, 2, 3, 4]

for n in a
  1
  for inner_n in a[i + 1..-1]
    n +
  end
end

1, [2, 3, 4]
2, [3, 4]
3, [4]
