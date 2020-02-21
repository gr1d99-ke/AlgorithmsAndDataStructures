package main

import "fmt"

type bsearch struct {
	result int
}

func binarySearch(array []int, value int) *bsearch {
	high := len(array) - 1
	low := 0
	mid := (high + low) / 2

	for low < high && low != high  {
		if value < array[mid] {
			high = mid - 1
			mid = (high + low) / 2
		}

		if value > array[mid] {
			low = mid + 1
			mid = (high + low) / 2
		}

		if value == array[mid] {
			return &bsearch{result:mid}
		}
	}

	return &bsearch{result:-1}
}

func main()  {
	array := []int{1, 2, 3, 4, 5}
	value := 5

	output := binarySearch(array, value)

	fmt.Println(output.result)
}
