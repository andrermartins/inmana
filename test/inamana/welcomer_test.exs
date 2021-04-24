defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true

  alias Inmana.Welcomer

  describe "welcomer/1" do
    test "when user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "Welcome to China banana special"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is unde ager, returns an error" do
      params = %{"name" => "John", "age" => "15"}
      expected_result = {:error, "Its not allow john"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
