# Tool to aid in generate the protobuf code generation.
# You probably do not need to run this tool unless you modify the protobuf files in this example.
export PATH="$PATH":"$HOME/.pub-cache/bin"
mix protobuf.generate --include-path=priv/proto --plugin=ProtobufGenerate.Plugins.GRPCWithOptions --output-path=./lib priv/proto/rpc_schema.proto
protoc -I priv/proto/google/api/ -I priv/proto/ priv/proto/rpc_schema.proto --dart_out=grpc:flutter_app/lib/generated
