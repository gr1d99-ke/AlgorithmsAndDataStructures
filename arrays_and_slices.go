package main

import "fmt"

func main()  {
	var s = [3]int{12,2,3}
	b := &s
	b[0] = 0

	fmt.Println(b)
}
