package main

import (
	"fmt"
	"github.com/gorilla/handlers"
	"github.com/gorilla/mux"
	"golang-infra/app/handler"
	"net/http"
	"os"
)

func main() {
	r := mux.NewRouter()
	r.HandleFunc("/", handler.Main)
	r.HandleFunc("/health", handler.Health)

	fmt.Println("running server")
	if err := http.ListenAndServe(":8080", handlers.LoggingHandler(os.Stdout, r)); err != nil {
		fmt.Printf("unable to start server. %+v", err)
		return
	}
}
