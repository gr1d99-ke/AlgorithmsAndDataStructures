package main

import "fmt"

func main()  {
	n := 8
	s := "UDDDUDUU"

	fmt.Println(countValleys(n, s))
}

func countValleys(n int, s string) int  {
	var noOfValleys int
	var currentSeaLevel int
	var previousSeaLevel int


	for i := 0; i <= n - 1; i++ {
		step := string(s[i])
		previousSeaLevel = currentSeaLevel

		if step == "U" {
			currentSeaLevel ++
		}

		if step == "D" {
			currentSeaLevel --
		}

		if previousSeaLevel < 0 && currentSeaLevel == 0 {
			noOfValleys ++
		}
	}

	return noOfValleys
}