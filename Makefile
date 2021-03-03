protoc:
	protoc -I/usr/local/include -I. -I$(GOPATH)/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis -I/usr/local/opt/protobuf/include --go_out=./chat --go-grpc_out=./chat ./chat.proto

envoy_protoc:
	protoc -I/usr/local/include -I. -I/usr/local/opt/protobuf/include -I$(GOPATH)/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis \
	--include_imports \
	--include_source_info \
	--descriptor_set_out=./envoy/proto.pb \
  	./chat.proto