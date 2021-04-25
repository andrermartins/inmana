defmodule InmanaWeb.RestaurantsController do
  use InmanaWeb, :controller

  alias Inmana.Restaurant
  alias InmanaWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Inmana.create_restaurant(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end

  def show(conn, %{"id" => uuid}) do
    with {:ok, %Restaurant{} = restaurant} <- Inmana.get_restaurant(uuid) do
      conn
      |> put_status(:ok)
      |> render("show.json", restaurant: restaurant)
    end
  end

  def index(conn, _params) do
    with {:ok, restaurants} <- Inmana.get_restaurants() do
      conn
      |> put_status(:ok)
      |> render("index.json", restaurants: restaurants)
    end
  end
end
