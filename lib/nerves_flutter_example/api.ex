defmodule NervesFlutterExample.API do
  require Logger

  alias Nerves.Runtime.KV

  def handle_request(%Plug.Conn{} = conn, command) do
    resp_payload = handle_command(command) |> Jason.encode!()

    conn
    |> Plug.Conn.put_resp_header("content-type", "application/json")
    |> Plug.Conn.resp(200, resp_payload)
  end

  defp handle_command("wifi_scan") do
    networks =
      VintageNetWiFi.quick_scan(5_000)
      |> Enum.map(fn network -> Map.delete(network, :__struct__) end)

    %{"networks" => networks}
  end

  defp handle_command("system_info") do
    fw_architecture = KV.get_active("nerves_fw_architecture")
    fw_platform = KV.get_active("nerves_fw_platform")
    fw_product = KV.get_active("nerves_fw_product")
    fw_version = KV.get_active("nerves_fw_version")
    fw_uuid = KV.get_active("nerves_fw_uuid")

    %{
      "hostname" => :inet.gethostname() |> elem(1) |> to_string(),
      "serial_number" => Nerves.Runtime.serial_number(),
      "mix_target" => Nerves.Runtime.mix_target(),
      "firmware_valid" => Nerves.Runtime.firmware_valid?(),
      "fw_architecture" => fw_architecture,
      "fw_platform" => fw_platform,
      "fw_product" => fw_product,
      "fw_version" => fw_version,
      "fw_uuid" => fw_uuid
    }
  end

  defp handle_command(_unknown_cmd) do
    %{"error" => "Unknown Command"}
  end
end
