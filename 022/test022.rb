require 'test/unit'
require './lib022.rb'

class Test022 < Test::Unit::TestCase

  def test01_SortingArray
    assert_equal [[1], [12, 23], [12, 23, 25], [25, 21]], sortArrayOfArrays([[12, 23], [25, 21], [12, 23, 25], [1]])
  end

  def test02_SortingArray
    input = [[45, 23, 24], [23], [23, 27], [23, 5], [90], [3, 4, 5, 6, 7]]
    expected = [[3, 4, 5, 6, 7], [23], [23, 5], [23, 27], [45, 23, 24], [90]]

    assert_equal expected, sortArrayOfArrays(input)
  end

  def  test03_TestValueOfName
    assert_equal 53, getValueOfName([67, 79, 76, 73, 78])
  end

end