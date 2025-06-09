defmodule CatanApiWeb.DefaultController do
  use CatanApiWeb, :controller

  @doc """
  Returns a simple message indicating the API is running.
  """
  def index(conn, _params) do
    text(conn, "This is the Catan API. Environment: #{Mix.env()}")
  end
end
