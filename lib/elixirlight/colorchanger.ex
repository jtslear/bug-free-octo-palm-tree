defmodule Elixirlight.Colorchanger do
  import ColorUtils

  @doc """
  Initializes a white color upon startup
  Using RGB here cuz that is what our device uses
  """
  def start_link do
    color = %ColorUtils.RGB{red: 255, green: 255, blue: 255}
    Agent.start_link(fn -> color end)
  end

  @doc """
  Get the current color from the agent
  We return Hex values for color as that is how our web app manages it
  """
  def get(agent, color) do
    Agent.get(agent, %ColorUtils.rgb_to_hex(color))
  end

end
