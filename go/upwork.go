package main

import (
	"fmt"
	"github.com/levigross/grequests"
	"log"
)

func main() {
	//upwork := "www.upwork.com"
	//upworkurl := "https://www.upwork.com/o/profiles/users/%s"
	//var record []string

	resp, err := grequests.Get("https://www.upwork.com/fl/johnbampton", nil)
	// You can modify the request by passing an optional RequestOptions struct

	if err != nil {
		log.Fatalln("Unable to make request: ", err)
	}

	fmt.Println(resp.String())
}

