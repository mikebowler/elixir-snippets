defmodule PrimeFactors do
  def factor(1) do
    []
  end

  def factor(number) do
    Enum.reverse(factor(number, 2, []))
  end

  defp factor(number, divisor, acc) when number == divisor do
    [number | acc]
  end

  defp factor(number, divisor, acc) when rem(number, divisor) == 0 do
    number = trunc(number / divisor)
    factor(number, divisor, [divisor | acc])
  end

  defp factor(number, divisor, acc) do
    factor(number, divisor + 1, acc)
  end
end
