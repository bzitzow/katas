defmodule Katas do
  # @moduledoc """
  # Documentation for Katas.
  # """
  #
  # @doc """
  # Hello world.
  #
  # ## Examples
  #
  #     iex> Katas.hello
  #     :world
  #
  # """
  def chop(num, []) do
    -1
  end

  def chop(num, [head]) do
    if num == head do
      head
    else
      -1
    end
  end

  def chop(num, [head | tail]) do
    if num == head do
      head
    else
      chop(num, tail)
    end
  end
end
