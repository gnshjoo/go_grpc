.PHONY: protos

protos:
	protoc -I/usr/local/include -I. -I$(GOPATH)/src -I$(GOPATH)/pkg/mod/github.com/grpc-ecosystem/grpc-gateway/v2@v2.0.1/third_party/googleapis --go_out=:. config/config.proto

gateway:
	protoc -I/usr/local/include -I. -I$(GOPATH)/src -I$(GOPATH)/pkg/mod/github.com/grpc-ecosystem/grpc-gateway/v2@v2.0.1/third_party/googleapis --grpc-gateway_out=logtostderr=true:. config/config.proto
