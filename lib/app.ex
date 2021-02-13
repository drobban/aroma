defmodule App do
  use Application

  alias Aroma.Bot

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @impl true
  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    children = Application.get_env(:aroma, :bots) |> Enum.map(fn bot -> worker(Aroma, [bot]) end)

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
