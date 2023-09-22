package main

import (
    "fmt"
    "log"
    "github.com/valyala/fasthttp"
)

func main() {
    // Define your routes and handlers here using FastHTTP.
    // Example:
    requestHandler := func(ctx *fasthttp.RequestCtx) {
        fmt.Fprintf(ctx, "Welcome to the Bookkeeping HTTP Server!")
    }

    // Start the HTTP server
    if err := fasthttp.ListenAndServe(":8080", requestHandler); err != nil {
        log.Fatalf("Error in HTTP server: %s", err)
    }
}
