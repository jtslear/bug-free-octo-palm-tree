defmodule Elixirlight.ColorchangerTest do
  use ExUnit.Case, async: true

  test "gets initial color" do
    {:ok, color} = Elixirlight.Colorchanger.start_link
    assert Elixirlight.Colorchanger.get(color) == "#FFFFFF"
  end
end
