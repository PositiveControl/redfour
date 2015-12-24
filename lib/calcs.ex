defmodule Calcs do
  def round_to_nearest_tenth(val) do
    Float.ceil(val, 1)
  end

  def convert_to_km(velocity) do
    velocity / 1000
  end

  def convert_to_m(height) do
    height * 1000
  end

  def square_root(val) do
    :math.sqrt(val)
  end

  def squared(val) do
    val * val
  end

end
