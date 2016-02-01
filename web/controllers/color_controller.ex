defmodule Elixirlight.ColorController do
  use Elixirlight.Web, :controller

  @default_color "#ff0000"

  def index(conn, _params) do
    conn
    |> assign(:color, current_color(conn))
    |> assign(:csrf_token, get_csrf_token)
    |> render("index.html")
  end

  def create(conn, %{"color" => color}) do
    conn
    |> set_color(color)
    |> put_flash(:info, "Updated color!")
    |> redirect(to: "/")
  end

  defp current_color(conn) do
    get_session(conn, :color) || @default_color
  end

  defp set_color(conn, color) do
    put_session(conn, :color, color)
  end
end
