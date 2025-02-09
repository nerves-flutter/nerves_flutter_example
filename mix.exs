defmodule NervesFlutterExample.MixProject do
  use Mix.Project

  @app :nerves_flutter_example
  @version "0.1.0"

  # We currently support Raspberry Pi 4 and 5.
  # Other aarch64 platforms should also work, but require testing.
  @all_targets [:rpi4, :rpi5]

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.17",
      archives: [nerves_bootstrap: "~> 1.13"],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [{@app, release()}],
      preferred_cli_target: [run: :host, test: :host]
    ]
  end

  def application do
    [
      extra_applications: [:logger, :runtime_tools],
      mod: {NervesFlutterExample.Application, []}
    ]
  end

  defp deps do
    [
      {:nerves, "~> 1.10", runtime: false},
      {:shoehorn, "~> 0.9.1"},
      {:ring_logger, "~> 0.11.0"},
      {:toolshed, "~> 0.4.0"},
      {:nerves_runtime, "~> 0.13.0"},
      {:nerves_pack, "~> 0.7.1", targets: @all_targets},
      {:nerves_system_rpi4, "~> 1.29.0", runtime: false, targets: :rpi4},
      {:nerves_system_rpi5, "~> 0.4.0", runtime: false, targets: :rpi5},
      {:nerves_flutter_support, path: "../nerves_flutter_support"},
      {:circuits_i2c, "~> 2.0"},

      # Flutter Example Deps
      {:vintage_net_wifi, "~> 0.12.0", runtime: false},
      {:grpc, "~> 0.9"},
      {:protobuf_generate, "~> 0.1.1"},
      {:jason, "~> 1.4.0"}
    ]
  end

  def release do
    [
      overwrite: true,
      cookie: "#{@app}_cookie",
      include_erts: &Nerves.Release.erts/0,
      # NOTE: Notice the added `&NervesFlutterSupport.BuildFlutterApp.run/1` reference
      # This enabled the automatic compilation of a Flutter app located at `./flutter_app`, and release of it into the `./priv` directory.
      # This enables "zero-configuration" Flutter app embedding.
      steps: [&Nerves.Release.init/1, &NervesFlutterSupport.BuildFlutterApp.run/1, :assemble],
      # You can configure the builder's input and output directories:
      # flutter: [
      #   project_dir: "/path/to/flutter_app/",
      #   output_dir: "/app/build/aot_output/path/",
      # ],
      strip_beams: Mix.env() == :prod or [keep: ["Docs"]]
    ]
  end
end
