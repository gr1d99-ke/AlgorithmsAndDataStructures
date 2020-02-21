require 'minitest'

def binary_search(input_array, value)
  high = input_array.length - 1
  low = 0
  mid = (high + low) / 2

  loop do
    if low != high
      if low < high
        if value > input_array[mid]
          low = mid + 1
          mid = (low + high) /2
        end

        if value < input_array[mid]
          high = mid - 1
          mid = (low + high) / 2
        end

        if value == input_array[mid]
          return mid
        end
      end
    end

    return -1
  end
end

a = [1, 2, 3]
p binary_search(a, 1) == 0
p binary_search(a, 2) == 1
p binary_search(a, 3) == 2
p binary_search(a, 4) == -1
p binary_search(a, -1) == -1
