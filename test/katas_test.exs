defmodule KatasTest do
  use ExUnit.Case
  # doctest Katas

  test "search finds nothing in empty list" do
    assert :notfound == Katas.lin_search(3, [])
    assert :notfound == Katas.bin_search(3, [])
    assert :notfound == Katas.jmp_search(3, [])
  end

  test "search finds nothing in list of one" do
    assert :notfound == Katas.lin_search(3, [1])
    assert :notfound == Katas.bin_search(3, [1])
    assert :notfound == Katas.jmp_search(3, [1])
  end

  test "search finds match in list of one" do
    assert 1 == Katas.lin_search(1, [1])
    assert 1 == Katas.bin_search(1, [1])
    assert 1 == Katas.jmp_search(1, [1])
  end

  test "search matches on first value in list of three" do
    assert 1 == Katas.lin_search(1, [1, 3, 5])
    assert 1 == Katas.bin_search(1, [1, 3, 5])
    assert 1 == Katas.jmp_search(1, [1, 3, 5])
  end

  test "search matches on middle value in list of three" do
    assert 3 == Katas.lin_search(3, [1, 3, 5])
    assert 3 == Katas.bin_search(3, [1, 3, 5])
    assert 3 == Katas.jmp_search(3, [1, 3, 5])
  end

  test "search matches on last value in list of three" do
    assert 5 == Katas.lin_search(5, [1, 3, 5])
    assert 5 == Katas.bin_search(5, [1, 3, 5])
    assert 5 == Katas.jmp_search(5, [1, 3, 5])
  end

  test "search matches on first value in list of four" do
    assert 1 == Katas.lin_search(1, [1, 3, 5, 7])
    assert 1 == Katas.bin_search(1, [1, 3, 5, 7])
    assert 1 == Katas.jmp_search(1, [1, 3, 5, 7])
  end

  test "search matches on middle value in list of four" do
    assert 3 == Katas.lin_search(3, [1, 3, 5, 7])
    assert 3 == Katas.bin_search(3, [1, 3, 5, 7])
    assert 3 == Katas.jmp_search(3, [1, 3, 5, 7])
  end

  test "search matches on middle value in long list" do
    assert 55 == Katas.lin_search(55, [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610])
    assert 55 == Katas.bin_search(55, [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610])
    assert 55 == Katas.jmp_search(55, [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610])
    # assert 55 == Katas.interpolation_search(55, [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610])
  end

  test "search matches on last value in list of four" do
    assert 7 == Katas.lin_search(7, [1, 3, 5, 7])
    assert 7 == Katas.bin_search(7, [1, 3, 5, 7])
    assert 7 == Katas.jmp_search(7, [1, 3, 5, 7])
    # assert 7 == Katas.interpolation_search(7, [1, 3, 5, 7])
  end

  test "search does not match on non-existent numbers, even at edges" do
    assert :notfound == Katas.lin_search(0, [1, 3, 5])
    assert :notfound == Katas.lin_search(2, [1, 3, 5])
    assert :notfound == Katas.lin_search(4, [1, 3, 5])
    assert :notfound == Katas.lin_search(6, [1, 3, 5])

    assert :notfound == Katas.bin_search(0, [1, 3, 5])
    assert :notfound == Katas.bin_search(2, [1, 3, 5])
    assert :notfound == Katas.bin_search(4, [1, 3, 5])
    assert :notfound == Katas.bin_search(6, [1, 3, 5])

    assert :notfound == Katas.jmp_search(0, [1, 3, 5])
    assert :notfound == Katas.jmp_search(2, [1, 3, 5])
    assert :notfound == Katas.jmp_search(4, [1, 3, 5])
    assert :notfound == Katas.jmp_search(6, [1, 3, 5])

    # assert :notfound == Katas.interpolation_search(0, [1, 3, 5])
    # assert :notfound == Katas.interpolation_search(2, [1, 3, 5])
    # assert :notfound == Katas.interpolation_search(4, [1, 3, 5])
    # assert :notfound == Katas.interpolation_search(6, [1, 3, 5])

    assert :notfound == Katas.lin_search(0, [1, 3, 5, 7])
    assert :notfound == Katas.lin_search(2, [1, 3, 5, 7])
    assert :notfound == Katas.lin_search(4, [1, 3, 5, 7])
    assert :notfound == Katas.lin_search(6, [1, 3, 5, 7])
    assert :notfound == Katas.lin_search(8, [1, 3, 5, 7])

    assert :notfound == Katas.bin_search(0, [1, 3, 5, 7])
    assert :notfound == Katas.bin_search(2, [1, 3, 5, 7])
    assert :notfound == Katas.bin_search(4, [1, 3, 5, 7])
    assert :notfound == Katas.bin_search(6, [1, 3, 5, 7])
    assert :notfound == Katas.bin_search(8, [1, 3, 5, 7])

    assert :notfound == Katas.jmp_search(0, [1, 3, 5, 7])
    assert :notfound == Katas.jmp_search(2, [1, 3, 5, 7])
    assert :notfound == Katas.jmp_search(4, [1, 3, 5, 7])
    assert :notfound == Katas.jmp_search(6, [1, 3, 5, 7])
    assert :notfound == Katas.jmp_search(8, [1, 3, 5, 7])

    # assert :notfound == Katas.interpolation_search(0, [1, 3, 5, 7])
    # assert :notfound == Katas.interpolation_search(2, [1, 3, 5, 7])
    # assert :notfound == Katas.interpolation_search(4, [1, 3, 5, 7])
    # assert :notfound == Katas.interpolation_search(6, [1, 3, 5, 7])
    # assert :notfound == Katas.interpolation_search(8, [1, 3, 5, 7])

  end

end
