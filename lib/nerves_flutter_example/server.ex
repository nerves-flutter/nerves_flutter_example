defmodule NervesFlutterExample.RPC.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Server.Interceptors.Logger)
  run(NervesFlutterExample.RPC.Server)
end

defmodule NervesFlutterExample.RPC.Server do
  alias Nerves.Runtime.KV

  use GRPC.Server,
    service: NervesFlutterExample.RPC.Service,
    http_transcode: true

  @doc """
  gRPC function used to fetch basic system information
  """
  @spec get_system_info(NervesFlutterExample.Empty.t(), GRPC.Server.Stream.t()) ::
          NervesFlutterExample.SystemInformation.t()
  def get_system_info(_request, _stream) do
    fw_architecture = KV.get_active("nerves_fw_architecture")
    fw_platform = KV.get_active("nerves_fw_platform")
    fw_product = KV.get_active("nerves_fw_product")
    fw_version = KV.get_active("nerves_fw_version")
    fw_uuid = KV.get_active("nerves_fw_uuid")

    %NervesFlutterExample.SystemInformation{
      hostname: :inet.gethostname() |> elem(1) |> to_string(),
      serial_number: Nerves.Runtime.serial_number(),
      mix_target: Nerves.Runtime.mix_target() |> to_string(),
      fw_valid: Nerves.Runtime.firmware_valid?(),
      fw_architecture: fw_architecture,
      fw_platform: fw_platform,
      fw_product: fw_product,
      fw_version: fw_version,
      fw_uuid: fw_uuid
    }
  end

  @doc """
  gRPC function used to scan for WiFi networks
  """
  @spec wifi_scan(NervesFlutterExample.Empty.t(), GRPC.Server.Stream.t()) ::
          NervesFlutterExample.WiFiScanResult.t()
  def wifi_scan(_request, _stream) do
    networks =
      VintageNetWiFi.quick_scan(5_000)
      |> Enum.map(fn %VintageNetWiFi.AccessPoint{} = network ->
        %NervesFlutterExample.WiFiNetworkInfo{
          ssid: network.ssid,
          bssid: network.bssid,
          channel: network.channel,
          frequency: network.frequency,
          signal_dbm: network.signal_dbm,
          signal_percent: network.signal_percent,
          flags: Enum.map(network.flags, &to_string/1)
        }
      end)

    %NervesFlutterExample.WiFiScanResult{
      networks: networks
    }
  end

  @spec reboot_system(NervesFlutterExample.Empty.t(), GRPC.Server.Stream.t()) ::
          no_return
  def reboot_system(_request, _stream) do
    Nerves.Runtime.reboot()
  end

  @spec halt_system(NervesFlutterExample.Empty.t(), GRPC.Server.Stream.t()) ::
          no_return
  def halt_system(_request, _stream) do
    Nerves.Runtime.halt()
  end
end
