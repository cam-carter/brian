defmodule Brian.Command do
  alias Nostrum.Api
  @topics [
    "movies",
    "bartending",
    "warhammer",
    "magic",
    "mixology",
    "martini",
    "alcohol",
    "girls"
  ]

  def handle(%{content: content} = message) do
    cond do
      handle_message?(message) ->
        process(message)
      true ->
        :noop
    end
  end

  defp process(%{content: "girls", channel_id: channgel_id} = message) do
    Api.create_message(channel_id, "I like girls :)")
  end

  defp process(%{content: "movies", channel_id: channgel_id} = message) do
    Api.create_message(channel_id, "So let me tell you a thing or two about film history...")
  end

  defp process(_message), do: :noop

  defp handle_message?(%{content: content, author: author} = _message) do
    Enum.map(@topics, fn topic ->
      String.contains?(content, topic) and author.id != @bot_id
    end)
  end
end
