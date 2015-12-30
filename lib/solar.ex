defmodule Solar do
  def power(%{classification: :M, scale: s}), do: s * 10
  def power(%{classification: :X, scale: s}), do: s * 1000
  def power(%{classification: :C, scale: s}), do: s

  def no_eva(flares) do
    Enum.filter flares, fn(flare) ->
      power(flare) > 1000
    end
  end

  def deadliest(flares) do
    Enum.map(flares, fn(flare) -> power(flare) end)
      |> Enum.max
  end

  def total_exposure(flares), do: total_exposure(flares, 0)
  def total_exposure([], total), do: total
  def total_exposure([head | tail], total) do
    total_exposure(tail, power(head) + total)
  end
end
