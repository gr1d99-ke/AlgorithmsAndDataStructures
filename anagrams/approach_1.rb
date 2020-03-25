module Anagrams
  module Approach1
    def self.call(str1, str2)
      str1 = bubble_sort_str(str1.downcase.tr(" ", ""))
      str2 = bubble_sort_str(str2.downcase.tr(" ", ""))
      str1 == str2
    end

    def self.bubble_sort_str(str) # O(N^2)
      str_arr = str.split(//) #
      str_arr.each do # n iterations
        i = 0 # constant
        str_arr.each do # n iterations
          break if i > str_arr.length - 1
          next if i + 1 > str_arr.length - 1
          is_greater = (str[i] <=> str[i + 1]) == 1
          str[i], str[i + 1] = str[i + 1], str[i] if is_greater
          i += 1 # constant
        end
      end
      str
    end
  end

  extend(Approach1)
end

p Anagrams::Approach1.call("incest", "insect")
p Anagrams::Approach1.call("William Shakespeare", "I am a weakish speller")
p Anagrams::Approach1.call("Tom Marvolo Riddle", "I am Lord Voldemort")
