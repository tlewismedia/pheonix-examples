defmodule PhoenixExamplesWeb.Router do
  use PhoenixExamplesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixExamplesWeb do
    pipe_through :browser

    resources "/pages", PageController
    resources "/books", BookController
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixExamplesWeb do
  #   pipe_through :api
  # end
end
