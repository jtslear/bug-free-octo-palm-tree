defmodule Elixirlight.Colorchanger do
  import ColorUtils

  @doc """
  Initializes a white color upon startup
  Using RGB here cuz that is what our device uses
  """
  def start_link do
    Agent.start_link(fn -> %ColorUtils.RGB{} end)
  end

  @doc """
  Get the current color from the agent
  We return Hex values for color as that is how our web app manages it
  """
  def get(agent) do
    Agent.get(agent, &ColorUtils.rgb_to_hex(&1))
  end

  def define_color(agent, color) do
    Agent.update(agent, &ColorUtils.hex_to_rgb(&1))
  end
end
