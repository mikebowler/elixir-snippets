defmodule FizzBuzzTest do
  use ExUnit.Case
  # doctest Sample

  for {input, expected} <- [
    {2, "2"},
    {3, "Fizz"}, {6, "Fizz"},
    {5, "Buzz"}, {10, "Buzz"},
    {15, "FizzBuzz"}, {30, "FizzBuzz"}
  ] do
    test "#{input} converts to #{expected}" do
      assert FizzBuzz.convert(unquote(input)) == unquote(expected)
    end
  end
end
