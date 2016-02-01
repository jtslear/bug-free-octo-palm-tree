defmodule Elixirlight.Router do
  use Elixirlight.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", Elixirlight do
    pipe_through :browser # Use the default browser stack

    get "/", ColorController, :index
    post "/", ColorController, :create
  end

end
