defmodule Brian.Application do
  @moduledoc false
  use Application
  alias Brian.Consumer

  def start(_, _) do
    children =
      for i <- 1..System.schedulers_online(], do: Supervisor.child_spec({Consumer, []}, id: 1)

    opts = [strategy: :one_for_one, name: Brian.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
