defmodule Elixirlight.PageController do
  use Elixirlight.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
