defmodule NervesFlutterExample.Server do
  @moduledoc """
  This is the server that provides data to the Flutter "frontend".
  This example uses a really basic HTTP and JSON based API.
  You can use whatever type of communication protocol makes sense for your particular application.
  Since the Flutter app is simply running as a local process on the Nerves device, it has access to the
  file system, and to the networking facilities.
  """
  use Plug.Router

  alias NervesFlutterExample.API

  plug(:match)
  plug(:dispatch)
  plug(Plug.Logger)

  get "/api/:command" do
    API.handle_request(conn, command)
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end
