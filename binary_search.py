# using while loop

def binary_search(input_array, value):
    """Your code goes here."""

    high = len(input_array) - 1
    low = 0
    mid = (high + low) // 2

    while low < high and low != high:
        if value > input_array[mid]:
            low = mid + 1
            mid = (high + low) // 2

        if value < input_array[mid]:
            high = mid - 1
            mid = (low + high) // 2

        if value == input_array[mid]:
            return mid

    return -1




test_list = [1, 3, 9, 11, 15, 19, 29]
test_val1 = 19
test_val2 = 9
print(binary_search(test_list, test_val1))
print(binary_search(test_list, test_val2))