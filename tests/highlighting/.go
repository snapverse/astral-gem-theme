package main

import "fmt"

func main() {

	var data int = 10
	x := &data
	fmt.Println(*x)
	
	xx := new(int)
	*xx = 10
	fmt.Println(*xx)
}