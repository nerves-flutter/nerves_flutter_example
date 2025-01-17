defmodule NervesFlutterExample do
  @spec get_networks() :: binary()
  def get_networks() do
    VintageNetWiFi.quick_scan(1_000) |> Jason.encode!()
  end
end
