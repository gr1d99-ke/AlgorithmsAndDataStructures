package main

import (
	"fmt"
)

func twoSum(nums []int, target int) []int  {
	result := make([]int, 2)

	for i := 0; i < len(nums); i++ {
		for j := i+1; j < len(nums[0:len(nums)]); j++{
			sum := nums[i] + nums[j]

			if sum == target {
				result[0] = i
				result[1] = j
				break
			}
		}
	}

	return result
}

func main()  {
	arr := []int{0,4,3,0}
	target := 0

	fmt.Println(twoSum(arr, target))
}