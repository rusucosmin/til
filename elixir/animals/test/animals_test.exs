defmodule AnimalsTest do
  use ExUnit.Case
  doctest Animals

  test "greets the world" do
    assert Animals.hello() == :world
  end

  test "randomise" do
    zoo = Animals.create_zoo()
    assert zoo != Animals.randomise(zoo)
  end
end
