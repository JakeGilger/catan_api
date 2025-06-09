defmodule CatanApi do
  @moduledoc """
  CatanApi keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  defmodule GameState do
    @moduledoc """
    The GameState context manages the state of the game.
    It provides functions to retrieve and manipulate game state.
    """

    alias CatanApi.Repo
    alias CatanApi.GameState.Game

    @doc """
    Retrieves the game state by ID.
    """
    def get_game_state(id) do
      case Repo.get(Game, id) do
        nil -> {:error, :not_found}
        game -> {:ok, game}
      end
    end
  end
end
