defmodule AtomsTest do
  use ExUnit.Case
  doctest ElixirDataStructures

  @tag :skip
  test "converts atom to string" do
    assert Atoms.atom_to_string(:my_atom) == "my_atom"
  end

  @tag :skip
  test "converts string to atom" do
    assert Atoms.string_to_atom("my_atom") == :my_atom
  end

  @tag :skip
  test "don't create an untrusted atom - only one that has already been defined" do
    catch_error Atoms.string_to_atom("this_should_not_exist")
  end
end
