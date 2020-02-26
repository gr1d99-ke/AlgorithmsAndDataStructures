package main

import "fmt"

func main()  {
	arr := []int{10, 8, 1, 0, 6, 4}

	for j := 0; j <= len(arr) - 1; j++ {
		for i := 0 ;i + 1 <= len(arr) - 1; i++ {
			currVal := arr[i]
			nextVal := arr[i + 1]

			if nextVal < currVal {
				arr[i] = nextVal
				arr[i + 1] = currVal
			}
		}
	}

	fmt.Println(arr)

}
