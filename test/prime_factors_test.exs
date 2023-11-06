defmodule PrimeFactorsTest do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "factoring primes",  # description
    fn (input, expected) ->
      assert PrimeFactors.factor(input) == expected
    end do
      [
        {1, []},
        {2, [2]},
        {3, [3]},
        {5, [5]},
        {4, [2, 2]},
        {8, [2, 2, 2]},
        {9, [3, 3]},
        {12, [2, 2, 3]},
      ]
  end
end
