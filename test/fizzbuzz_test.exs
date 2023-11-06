defmodule FizzBuzzTest do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "fizzbuzz",  # description
    fn (input, expected) ->
      assert FizzBuzz.convert(input) == expected
    end do
      [
        "normal value":        {2, "2"},
        "exactly 3":           {3, "Fizz"},
        "multiple of 3":       {6, "Fizz"},
        "exactly 5":           {5, "Buzz"},
        "multiple of 5":       {10, "Buzz"},
        "exactly 3 and 5":     {15, "FizzBuzz"},
        "multiple of 3 and 5": {30, "FizzBuzz"}
      ]
  end
end
