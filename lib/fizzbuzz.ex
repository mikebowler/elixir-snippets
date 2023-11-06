defmodule FizzBuzz do
  @moduledoc "Implementation of fizzbuzz"
  
  def convert(number) do
    case {rem(number, 3), rem(number, 5), number} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, _} -> Integer.to_string(number)
    end
  end
end
