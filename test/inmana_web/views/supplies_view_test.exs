defmodule InmanaWeb.SuppliesViewTest do
  use InmanaWeb.ConnCase, async: true

  import Phoenix.View

  alias Inmana.Supply
  alias InmanaWeb.SuppliesView

  describe "render/2" do
    test "renders create.json" do
      restaurant_params = %{name: "Restaurante Chaves", email: "chave@mail.com"}
      {:ok, restaurant} = Inmana.create_restaurant(restaurant_params)

      params = %{
        description: "Arroz 5Kg",
        expiration_date: "2021-02-20",
        responsable: "João",
        restaurant_id: restaurant.id
      }

      {:ok, supply} = Inmana.create_supply(params)

      response = render(SuppliesView, "create.json", supply: supply)

      assert %{
               message: "Supply created",
               supply: %Supply{
                 description: "Arroz 5Kg",
                 restaurant_id: _id,
                 responsable: "João",
                 expiration_date: ~D[2021-02-20]
               }
             } = response
    end
  end
end
