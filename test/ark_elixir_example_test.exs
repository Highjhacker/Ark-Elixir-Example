defmodule ArkElixirExampleTest do
  use ExUnit.Case
  doctest ArkElixirExample

  test "greets the world" do
    assert ArkElixirExample.hello() == :world
  end
end
