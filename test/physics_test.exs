defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "Physics.Rocketry.escape_velocity :earth" do
    assert Physics.Rocketry.escape_velocity(:earth) == 11.2
  end

  test "Physics.Rocketry.escape_velocity :mars" do
    assert Physics.Rocketry.escape_velocity(:mars) == 5.1
  end

  test "Physics.Rocketry.escape_velocity :moon" do
    assert Physics.Rocketry.escape_velocity(:moon) == 2.4
  end

  test "Physics.Rocketry.escape_velocity" do
    assert Physics.Rocketry
        .escape_velocity(%{mass: 8.987e30, radius: 9.145e7}) == 3620.8
  end

  test "Calcs.rounded_to_nearest_tenth" do
    assert Calcs.round_to_nearest_tenth(1.05) == 1.1
  end

  test "Calcs.convert_to_km" do
    assert Calcs.convert_to_km(5) == 0.005
  end
end
