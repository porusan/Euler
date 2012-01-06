require 'test/unit'
require './lib008.rb'

class Test008 < Test::Unit::TestCase

  def testProductOf5Digits
    assert_equal 108, productOfNDigits([2, 2, 3, 9])
  end
  
  def testProductOfRange
    assert_equal 120, productOfNDigits((2..5))
  end
  
  def testProductOfDigitsWith0
    assert_equal 0, productOfNDigits([5, 9, 9, 0, 3, 2])
  end
  
  def testContinuousDigitsLengthCheck
    a = [2,3,4,5]
    assert_equal -1, calcHighestNConDigits(a, 5)
  end
  
  def testContinuousDigitsContains0
    a = [1,0,9,9,9]
    assert_equal 0, calcHighestNConDigits(a, 5)
  end
  
  def testContinuousDigits0AtEnd
    a = [1,2,2,2,2,2,0]
    assert_equal 32, calcHighestNConDigits(a, 5)
  end
  
  def testContinuousDigits0LengthAtEnd
    a = [1,1,0,2,3,1,1,1]
    assert_equal 6, calcHighestNConDigits(a, 5)
  end
  
  def testContinuousDigitsTrailingDigitsAfterLast0
    a = [1,2,3,2,1,0,1,2,3,4]
    assert_equal 12, calcHighestNConDigits(a, 5)
  end
  
  def testContinuousDigitsTrailingDigitsAfterLast0Len3
    a = [1,2,2,2,2,2,0,9,9]
    assert_equal 8, calcHighestNConDigits(a, 3)
  end
  
  def testContinuousDigitsLen3
    a = [1,9,9,0,1,1,2,3,4,5]
    assert_equal 81, calcHighestNConDigits(a, 3)
  end

end
