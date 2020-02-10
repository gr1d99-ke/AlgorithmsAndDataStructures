module Leetcode
  module TwoSum
    LINK = 'https://leetcode.com/problems/two-sum/'

    solution = Module.new do
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

    extend(solution)
  end
end