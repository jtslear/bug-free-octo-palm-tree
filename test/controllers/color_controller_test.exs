defmodule Elixirlight.ColorControllerTest do
  use Elixirlight.ConnCase

  defstruct [:color]

  test "GET / ensure color picker exists", %{conn: conn} do
    conn = get conn, "/"
    assert conn.resp_body =~ "value=\"#ff0000\""
  end

  test "POST / to change the color", %{conn: conn} do
    conn = post(conn, "/", color: "#0000ff")

    assert get_session(conn, :color) == "#0000ff"
    assert get_flash(conn, :info) == "Updated color!"
    assert redirected_to(conn, 302) =~ "/"
  end
end
