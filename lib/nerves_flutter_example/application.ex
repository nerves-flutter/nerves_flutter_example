defmodule NervesFlutterExample.Application do
  @moduledoc false
  require Logger
  alias NervesFlutterSupport.Udev

  use Application

  @impl true
  def start(_type, _args) do
    # This is the example socket server that provides data to the Flutter app
    # NOTE: This will listen on a LAN accessieble port (0.0.0.0:4000)
    # This is only for easy debugging on remote instances of the Flutter app.
    # In production you would want to limit the connection to localhost, or to a UNIX socket file.

    grpc_server =
      {GRPC.Server.Supervisor,
       endpoint: NervesFlutterExample.RPC.Endpoint, port: 50051, start_server: true}

    children =
      [grpc_server] ++ children(Nerves.Runtime.mix_target())

    opts = [strategy: :one_for_one, name: NervesFlutterExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # List all child processes to be supervised
  defp children(:host) do
    []
  end

  defp children(_target) do
    # Bit of a hack, but we need to wait for /dev/dri to exists...
    dri_card = get_output_card()

    launch_env = %{
      "FLUTTER_DRM_DEVICE" => "/dev/dri/#{dri_card}"
    }

    [
      # Create a child that runs the Flutter embedder.
      # The `:app_name` matches this application, since it contains the AOT bundle at `priv/flutter_app`.
      # See the doc annotation for `create_child/1` for all valid options.
      NervesFlutterSupport.Flutter.Engine.create_child(
        app_name: :nerves_flutter_example,
        env: launch_env
      )
    ]
  end

  defp get_output_card() do
    Process.sleep(100)
    output = Udev.get_cards() |> Enum.find(fn card -> Udev.is_output_card?(card) end)

    if is_nil(output) do
      get_output_card()
    else
      output
    end
  end
end
