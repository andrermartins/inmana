defmodule Inmana.RestaurantTest do
  use Inmana.DataCase, async: true

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "When all params are valid, returns a valid changeset" do
      params = %{name: "Restaurante Brabo", email: "brabo@email.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{
               changes: %{name: "Restaurante Brabo", email: "brabo@email.com"},
               valid?: true
             } = response
    end

    test "When there are invalid params, returns a invalid changeset" do
      params = %{name: "R", email: ""}

      expected_response = %{
        email: ["can't be blank"],
        name: ["should be at least 2 character(s)"]
      }

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) == expected_response
    end
  end
end
