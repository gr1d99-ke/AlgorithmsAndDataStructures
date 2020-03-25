def bubble_sort(array):

    for i in array:
        j = 0

        while (j + 1) < len(array):
            if array[j + 1] < array[j]:
                array[j], array[j + 1] = array[j + 1], array[j]

            j += 1

    return array


print(bubble_sort(list("qwerty")))
