defmodule AromaTest do
  use ExUnit.Case
  doctest Aroma

  test "greets the world" do
    assert Aroma.hello() == :world
  end
end
