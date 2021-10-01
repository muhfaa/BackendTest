package main

import (
	"fmt"
	"strings"
)

func findFirstStringInBrackets(s string) string {
	i := strings.IndexByte(s, '(')
	if i < 0 {
		return ""
	}
	i++
	j := strings.IndexByte(s[i:], ')')
	if j < 0 {
		return ""
	}
	return s[i : i+j]
}

func main() {
	data := "(example)"
	firstString := findFirstStringInBrackets(data)
	fmt.Println("firstString:", firstString)
}
