require 'test/unit'
require './lib006'

# technically should be testing against precalculated contstants,
# but I'll just test against the mathematical formulae instead (lazy)
class Test006 < Test::Unit::TestCase

  def testSquareOfSum1
    assert_equal squareOfSumMath(1), squareOfSum(1)
  end

  def testSquareOfSum5
    assert_equal squareOfSumMath(5), squareOfSum(5)
  end

  def testSquareOfSum10
    assert_equal squareOfSumMath(10), squareOfSum(10)
  end

  def testSumOfSquares1
    assert_equal sumOfSquaresMath(1), sumOfSquares(1)
  end

  def testSumOfSquares5
    assert_equal sumOfSquaresMath(5), sumOfSquares(5)
  end

  def testSumOfSquares10
    assert_equal sumOfSquaresMath(10), sumOfSquares(10)
  end

end
