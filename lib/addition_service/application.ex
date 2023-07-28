defmodule AdditionService.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: AdditionService.AdderPlug, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: AdditionService.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
