defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase, async: true

  describe "create/2" do
    test "when all params are valid, creates a user", %{conn: conn} do
      params = %{name: "Restaurante Brabo", email: "brabo@email.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Restaurant created",
               "restaurant" => %{
                 "email" => "brabo@email.com",
                 "name" => "Restaurante Brabo",
                 "id" => _id
               }
             } = response
    end

    test "when there are invalid params, returns an error", %{conn: conn} do
      params = %{email: "brabo@email.com"}
      expected_reponse = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert expected_reponse == response
    end
  end
end
