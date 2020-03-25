module Anagrams
  module Approach2
    def self.call(str1, str2)
      str1 = str1.tr(" ", "")
      str2 = str2.tr(" ", "")
      str1.downcase!
      str2.downcase!
      str1_hash = {}
      (0...str1.length).each do |i| # n iterations
        key = str1[i]
        if str1_hash.key?(key)
          str1_hash[key] += 1
        else
          str1_hash[str1[i]] = 1
        end
      end

      (0...str2.length).each do |i| # n iterations
        key = str2[i]
        if str1_hash.key?(key)
          str1_hash[key] -= 1
        end
      end

      str1_hash.values.all? { |v| v.zero? } # n iterations

      # complexity
      # O(N) -> O(N + N + N) -> O(3N) -> O(N)
    end
  end
end

p Anagrams::Approach2.call("incest", "insect")
p Anagrams::Approach2.call("William Shakespeare", "I am a weakish speller")
p Anagrams::Approach2.call("Tom Marvolo Riddle", "I am Lord Voldemort")
