def sockMerchant(n, ar)
  inventory = {}
  no_of_pairs = 0

  # loop through the entire array
  ar.each do |sock|

    # check if our inventory contains the sock
    if inventory.key?(sock)

      # if the number is a pair(2) in the inventory, increment and reset the
      # total to 0 so that we can watch out for the next pair
      if inventory[sock] == 2
        no_of_pairs += 1
        inventory[sock] = 0
      end

      inventory[sock] += 1

      # after incrementing the number of the sock, we check again if the number
      # is a pair(2) in the inventory, we then increment and reset the
      # total to 0 so that we can watch out for the next pair
      if inventory[sock] == 2
        no_of_pairs += 1
        inventory[sock] = 0
      end
    else
      inventory[sock] = 1
    end
  end

  no_of_pairs
end

pairs = [10, 20, 20, 10, 10, 30, 50, 10, 20]

p sockMerchant(9, pairs)