defmodule Katas do
  @moduledoc """
  These are solutions to common katas.
  
  @doc
  Katas implmented to date include:
    lin_search: a linear recursive search
    chop: a binary recursive search

  ## Examples

      iex> Katas.lin_search(1, [1, 3, 5, 7])
      1

      iex> Katas.chop(1, [1, 3, 5, 7])
      1

  """
  def lin_search(num, []) do
    :notfound
  end

  def lin_search(num, [head | tail]) do
    if num == head do
      head
    else
      lin_search(num, tail)
    end
  end

  def chop(num, []) do
    :notfound
  end

  def chop(num, num_list) when 1 == length(num_list) do
    if (List.first(num_list) == num) do
      num
    else
      :notfound
    end
  end

  def chop(num, num_list) do
    midpoint = ((length(num_list)/2) |> round)
    element = Enum.at(num_list, midpoint)
    if (element == num) do
      num
    else
      [left | right] = Enum.chunk(num_list, midpoint, midpoint, [])
      if (element > num) do
       chop(num, List.flatten(left))
      else
        chop(num, List.flatten(right))
      end
    end
  end
end
