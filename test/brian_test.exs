defmodule BrianTest do
  use ExUnit.Case
  doctest Brian

  test "greets the world" do
    assert Brian.hello() == :world
  end
end
