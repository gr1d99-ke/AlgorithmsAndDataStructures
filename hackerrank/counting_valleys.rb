def countingValleys(n, s)
  no_of_valleys = 0
  current_sea_level = 0
  prev_sea_level = current_sea_level

  s.split(//).each do |step|
    if step == 'U'
      prev_sea_level = current_sea_level
      current_sea_level += 1

      if prev_sea_level.negative? && current_sea_level.zero?
        no_of_valleys += 1
      end
    elsif step == 'D'
      prev_sea_level = current_sea_level
      current_sea_level -= 1
      if prev_sea_level.negative? && current_sea_level.zero?
        no_of_valleys += 1
      end
    end
  end

  no_of_valleys
end


n = 8
steps = 'UDDDUDUU'

p countingValleys(n, steps)