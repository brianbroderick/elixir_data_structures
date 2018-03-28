defmodule Conversions do
  @moduledoc """
  Let's convert some data structures!

  Each of these functions currently returns the arg.
  Check out the corresponding test and edit the function to return the result the test is
  expecting.
  """

  def list_to_map(list) do
    Enum.into(list, %{})
  end

  def list_to_map_with_b_values(list) do
    list
    |> Enum.filter(fn({k, v}) -> String.starts_with?(v, "b") end)
    |> list_to_map
  end

  def map_to_list(map) do
    map
    |> Map.to_list
  end

  def list_to_map_with_unique_values(list) do
    list
    |> Enum.uniq_by(fn({k, v}) -> v end)
    |> list_to_map
  end

  def map_to_list_with_even_values(map) do
    map
    |> Enum.filter(fn({k, v}) -> rem(v, 2) == 0 end)
  end
end
