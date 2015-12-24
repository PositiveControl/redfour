defmodule SolarTest do
  use ExUnit.Case
  use Timex

  setup do
    flares = [
      %{classification: :X, scale: 99, date: Date.from({1859, 8, 29})},
      %{classification: :M, scale: 5.8, date: Date.from({2015, 1, 12})},
      %{classification: :M, scale: 1.2, date: Date.from({2015, 2, 9})},
      %{classification: :C, scale: 3.2, date: Date.from({2015, 4, 18})},
      %{classification: :M, scale: 83.6, date: Date.from({2015, 6, 23})},
      %{classification: :C, scale: 2.5, date: Date.from({2015, 7, 4})},
      %{classification: :X, scale: 72, date: Date.from({2012, 7, 23})},
      %{classification: :X, scale: 45, date: Date.from({2003, 11, 4})},
    ]
    {:ok, data: flares}
  end

  test "We have eight solar flares", %{data: flares} do
    assert length(flares) == 8
  end

  test "Properly calculates strength of :X class flare", %{data: flares} do
    assert Solar.power(hd(flares)) == 99000
  end

  test "returns where no_eva is permitted", %{data: flares} do
    assert length(Solar.no_eva(flares)) == 3
  end
end
