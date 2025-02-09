defmodule NervesFlutterExample.LogServer do
  use GenServer
  alias GRPC.Server

  def init(options) do
    init_state = %{
      stream: Keyword.get(options, :stream)
    }

    RingLogger.Server.attach_client(self())

    {:ok, init_state}
  end

  def handle_info({:log, log_message}, state) do
    mod =
      Keyword.get(log_message.metadata, :module, :elixir)
      |> to_string()
      |> String.replace_leading("Elixir.", "")

    new_entry = %NervesFlutterExample.LogEntry{
      timestamp: 0,
      message: log_message.message,
      module: mod,
      level: Atom.to_string(log_message.level)
    }

    Server.send_reply(state.stream, new_entry)

    {:noreply, state}
  end

  def handle_info(_, state), do: {:noreply, state}
end
