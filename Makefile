protoc:
	protoc -I/usr/local/include -I. -I/usr/local/opt/protobuf/include -I$(GOPATH)/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --plugin=protoc-gen-grpc-gateway=$(GOPATH)/bin/protoc-gen-grpc-gateway --grpc-gateway_out=logtostderr=true:./chat ./chat.proto \
	&& protoc -I/usr/local/include -I. -I$(GOPATH)/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis -I/usr/local/opt/protobuf/include --go_out=./chat --go-grpc_out=./chat ./chat.proto
