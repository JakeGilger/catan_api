defmodule CatanApiWeb.Router do
  use CatanApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CatanApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
  end

  resources "/accounts", AccountController, except: [:new, :edit]
end
