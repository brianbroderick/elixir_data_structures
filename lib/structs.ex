defmodule Structs do
  @moduledoc """
  An example using structs

  Each of these functions currently returns the arg.
  Check out the corresponding test and edit the function to return the result the test is
  expecting.
  """

  defmodule Event do
    @moduledoc """
    Struct used in example
    """
    defstruct name: "",
              location: "",
              date: DateTime.from_unix!(0),
              rsvp: false
  end

  def concert_names(concerts) do
    Enum.map(concerts, &(&1.name))
  end

  def concerts_before(date, concerts) do
    concerts
    |> Enum.reduce([], fn(%{date: concert_date, name: name}, acc) ->
      case DateTime.compare(concert_date, date) do
        :lt -> [name | acc]
        _ -> acc
      end
    end)
    |> Enum.reverse
  end
end
