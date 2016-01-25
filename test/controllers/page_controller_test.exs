defmodule Elixirlight.PageControllerTest do
  use Elixirlight.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "html5colorpicker"
  end
end
