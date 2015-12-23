defmodule Physics.Rocketry do
  import Calcs
  import Physics.Laws
  import Planets

  def escape_velocity(:mars) do
    mars
      |> escape_velocity
  end

  def escape_velocity(:moon) do
    moon
      |> escape_velocity
  end

  def escape_velocity(:earth) do
    earth
      |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> convert_to_km
      |> round_to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_gravitational_constant * mass / radius
      |> square_root
  end

end
