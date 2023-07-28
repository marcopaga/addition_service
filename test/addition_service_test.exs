defmodule AdditionServiceTest do
  use ExUnit.Case
  doctest AdditionService

  test "greets the world" do
    assert AdditionService.hello() == :world
  end
end
