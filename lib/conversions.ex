defmodule Conversions do
  require Integer
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
    Enum.reduce(list, %{}, fn
      {key, "b" <> _ = value}, acc -> Map.put(acc, key, value)
      _, acc -> acc
    end)
  end

  def map_to_list(map) do
    Map.to_list(map)
  end

  def list_to_map_with_unique_values(list) do
    Enum.reduce(list, %{}, fn({key, value}, acc) ->
      case value in Map.values(acc) do
        false -> Map.put(acc, key, value)
        _ -> acc
      end
    end)
  end

  def map_to_list_with_even_values(map) do
    Enum.reduce(map, [], fn {_, value} = pair, acc ->
      case Integer.is_even(value) do
        true -> [pair | acc] |> Enum.reverse
        _ -> acc
      end
    end)
  end
end
