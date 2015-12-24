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

  def orbital_speed(height) do
    height
      |> calculate_speed
  end

  def orbital_acceleration(height) do
    (orbital_speed(height) |> squared) / orbital_radius(height)
  end

  def orbital_term(height) do
    height
      |> calculate_term
      |> seconds_to_hours
  end

  defp orbital_radius(height) do
    Planets.earth.radius + (height |> convert_to_m)
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_gravitational_constant * mass / radius
      |> square_root
  end

  defp calculate_speed(height) do
    newtons_gravitational_constant * Planets.earth.mass / orbital_radius(height)
      |> square_root
  end

  defp calculate_term(height) do
    4 * (:math.pi |> squared) * (orbital_radius(height) |> cubed) /
    (newtons_gravitational_constant * earth.mass)
      |> square_root
  end

end
