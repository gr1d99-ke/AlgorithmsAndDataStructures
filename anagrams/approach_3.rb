module Anagrams
  module Approach3
    def self.call(str1, str2)
      str1 = str1.tr(" ", "")
      str2 = str2.tr(" ", "")
      str1.downcase!
      str2.downcase!

      str1_hash = {}
      str2_hash = {}

      (0...str1.length).each do |i|
        key = str1[i]
        if str1_hash.key?(key)
          str1_hash[key] += 1
        else
          str1_hash[key] = 1
        end
      end

      (0...str2.length).each do |i|
        key = str2[i]
        if str2_hash.key?(key)
          str2_hash[key] += 1
        else
          str2_hash[key] = 1
        end
      end

      str1_hash == str2_hash
    end
  end
end

p Anagrams::Approach3.call("incest", "insect")
p Anagrams::Approach3.call("William Shakespeare", "I am a weakish speller")
p Anagrams::Approach3.call("Tom Marvolo Riddle", "I am Lord Voldemort")
