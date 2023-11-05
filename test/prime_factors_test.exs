defmodule PrimeFactorsTest do
  use ExUnit.Case

  for {input, expected} <- [
    {1, []},
    {2, [2]},
    {3, [3]},
    {5, [5]},
    {4, [2,2]},
    {8, [2,2,2]},
    {9, [3,3]},
    {12, [2,2,3]},
  ] do
    test "#{input} converts to #{inspect(expected)}" do
      assert PrimeFactors.factor(unquote(input)) == unquote(expected)
    end
  end
end
