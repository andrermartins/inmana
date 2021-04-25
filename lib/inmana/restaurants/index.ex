defmodule Inmana.Restaurants.Index do
  alias Inmana.{Repo, Restaurant}

  def call() do
    Restaurant
    |> Repo.all()
    |> handle_index()
  end

  defp handle_index(result), do: {:ok, result}
end
