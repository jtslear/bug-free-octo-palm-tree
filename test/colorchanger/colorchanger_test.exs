defmodule Elixirlight.ColorchangerTest do
  use ExUnit.Case, async: true

  test "gets initial color" do
    {:ok, color} = Elixirlight.Colorchanger.start_link
    assert Elixirlight.Colorchanger.get(color) == "#"
  end

  test "set color to white" do
    {:ok, color} = Elixirlight.Colorchanger.start_link
    Elixirlight.Colorchanger.define_color(color, "#FFFFFF")
    assert Elixirlight.Colorchanger.get(color) == "#FFFFF"
  end
end
