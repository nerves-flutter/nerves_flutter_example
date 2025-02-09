defmodule NervesFlutterExample.Empty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule NervesFlutterExample.LogEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :message, 1, type: :string
  field :timestamp, 2, type: :int64
  field :level, 3, type: :string
  field :module, 4, type: :string
end

defmodule NervesFlutterExample.WiFiNetworkInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ssid, 1, type: :string
  field :bssid, 2, type: :string
  field :channel, 3, type: :int32
  field :frequency, 4, type: :int32
  field :signal_dbm, 5, type: :int32, json_name: "signalDbm"
  field :signal_percent, 6, type: :int32, json_name: "signalPercent"
  field :flags, 7, repeated: true, type: :string
end

defmodule NervesFlutterExample.WiFiScanResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :networks, 1, repeated: true, type: NervesFlutterExample.WiFiNetworkInfo
end

defmodule NervesFlutterExample.SystemInformation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hostname, 1, type: :string
  field :serial_number, 2, type: :string, json_name: "serialNumber"
  field :mix_target, 3, type: :string, json_name: "mixTarget"
  field :fw_valid, 4, type: :bool, json_name: "fwValid"
  field :fw_platform, 5, type: :string, json_name: "fwPlatform"
  field :fw_architecture, 6, type: :string, json_name: "fwArchitecture"
  field :fw_product, 7, type: :string, json_name: "fwProduct"
  field :fw_version, 8, type: :string, json_name: "fwVersion"
  field :fw_uuid, 9, type: :string, json_name: "fwUuid"
end

defmodule NervesFlutterExample.RPC.Service do
  @moduledoc false

  use GRPC.Service, name: "NervesFlutterExample.RPC", protoc_gen_elixir_version: "0.14.0"

  rpc(:GetSystemInfo, NervesFlutterExample.Empty, NervesFlutterExample.SystemInformation, %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "",
        additional_bindings: [],
        response_body: "",
        pattern: {:get, "/getSystemInfo"},
        __unknown_fields__: []
      }
    }
  })

  rpc(:WifiScan, NervesFlutterExample.Empty, NervesFlutterExample.WiFiScanResult, %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "",
        additional_bindings: [],
        response_body: "",
        pattern: {:get, "/wifiScan"},
        __unknown_fields__: []
      }
    }
  })

  rpc(:StreamLogs, NervesFlutterExample.Empty, stream(NervesFlutterExample.LogEntry), %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "",
        additional_bindings: [],
        response_body: "",
        pattern: {:get, "/streamLogs"},
        __unknown_fields__: []
      }
    }
  })

  rpc(:RebootSystem, NervesFlutterExample.Empty, NervesFlutterExample.Empty, %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "",
        additional_bindings: [],
        response_body: "",
        pattern: {:get, "/rebootSystem"},
        __unknown_fields__: []
      }
    }
  })

  rpc(:HaltSystem, NervesFlutterExample.Empty, NervesFlutterExample.Empty, %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "",
        additional_bindings: [],
        response_body: "",
        pattern: {:get, "/haltSystem"},
        __unknown_fields__: []
      }
    }
  })
end

defmodule NervesFlutterExample.RPC.Stub do
  @moduledoc false

  use GRPC.Stub, service: NervesFlutterExample.RPC.Service
end
