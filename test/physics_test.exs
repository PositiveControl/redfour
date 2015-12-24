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

  test "Physics.Rocketry.orbital_speed" do
    assert Physics.Rocketry.orbital_speed(100) == 7845.797893364734
  end

  test "Physics.Rocketry.orbital_speed :mars" do
    assert Physics.Rocketry.orbital_speed(:mars, 100) == 3489.6295341646633
  end

  test "Physics.Rocketry.orbital_speed :moon" do
    assert Physics.Rocketry.orbital_speed(:moon, 100) == 1633.179172993282
  end

  test "Physics.Rocketry.orbital_speed :earth" do
    assert Physics.Rocketry.orbital_speed(:earth, 100) == 7845.797893364734
  end

  test "Physics.Rocketry.orbital_acceleration" do
    assert Physics.Rocketry.orbital_acceleration(100) == 9.512678810620692
  end

  test "Physics.Rocketry.orbital_acceleration :mars" do
    assert Physics.Rocketry.orbital_acceleration(:mars, 100) == 3.4792897959183673
  end

  test "Physics.Rocketry.orbital_acceleration :moon" do
    assert Physics.Rocketry.orbital_acceleration(:moon, 100) == 1.4511829222519155
  end

  test "Physics.Rocketry.orbital_acceleration :earth" do
    assert Physics.Rocketry.orbital_acceleration(:earth, 100) == 9.512678810620692
  end

  test "Physics.Rocketry.orbital_term" do
    assert Physics.Rocketry.orbital_term(100) == 1.5
  end

  test "Physics.Rocketry.orbital_term :mars" do
    assert Physics.Rocketry.orbital_term(:mars, 100) == 1.8
  end

  test "Physics.Rocketry.orbital_term :moon" do
    assert Physics.Rocketry.orbital_term(:moon, 100) == 2.0
  end

  test "Physics.Rocketry.orbital_term :earth" do
    assert Physics.Rocketry.orbital_term(:earth, 100) == 1.5
  end

  test "Calcs.rounded_to_nearest_tenth" do
    assert Calcs.round_to_nearest_tenth(1.05) == 1.1
  end

  test "Calcs.convert_to_km" do
    assert Calcs.convert_to_km(5) == 0.005
  end

  test "Calcs.squared" do
    assert Calcs.squared(5) == 25
  end

  test "Calcs.cubed" do
    assert Calcs.cubed(2) == 8
  end

  test "Calcs.seconds_to_hours" do
    assert Calcs.seconds_to_hours(3600) == 1
  end
end
