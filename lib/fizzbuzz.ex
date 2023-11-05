defmodule FizzBuzz do
  @moduledoc """
  Documentation for `Sample`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sample.hello()
      :world

  """
  def convert_procedural(number) do
    cond do
      rem(number, 3) == 0 && rem(number, 5) == 0 -> "FizzBuzz"
      rem(number, 3) == 0 -> "Fizz"
      rem(number, 5) == 0 -> "Buzz"
      true -> Integer.to_string(number)
    end
  end

  def convert(number) do
    case {rem(number, 3), rem(number, 5), number} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, _} -> Integer.to_string(number)
    end
  end
end
