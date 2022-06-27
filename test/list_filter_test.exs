defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "returns count of odd numbers in a list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      assert ListFilter.call(list) == 3
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
