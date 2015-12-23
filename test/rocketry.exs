defmodule RocketryTest do
  use ExUnit.Case
  doctest Rocketry

  test "escape_velocity :earth" do
    assert Physics.Rocketry.escape_velocity(:earth) == 11.2
  end
end
