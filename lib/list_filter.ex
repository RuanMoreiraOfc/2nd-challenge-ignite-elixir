defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  import Integer

  @doc """
  """
  def call(list) when is_list(list) do
    Enum.reduce(list, 0, fn element, acc ->
      element_is_odd_as_number =
        element
        |> try_parse_to_integer()
        |> resolve_integer_parse()
        |> is_odd()
        |> boolean_to_integer()

      acc + element_is_odd_as_number
    end)
  end

  defp try_parse_to_integer(element), do: Integer.parse("#{element}")

  defp resolve_integer_parse({value, _}), do: value

  defp resolve_integer_parse(:error), do: 0

  defp boolean_to_integer(true), do: 1

  defp boolean_to_integer(false), do: 0
end
