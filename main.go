package main

import (
	"context"
	"flag"
	"github.com/grpc-ecosystem/grpc-gateway/runtime"
)

var (
	grpcServerEndpoint = flag.String("grpc-server-end-point", "localhost:9090", "grpc server endpoint")
)

func run() error {
	ctx := context.Background()
	ctx, cancle := context.WithCancel(ctx)
	defer cancle()

	mux := runtime.NewServeMux()

}

func main() {

}
