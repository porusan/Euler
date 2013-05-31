require 'test/unit'
require './lib020.rb'

class Test020 < Test::Unit::TestCase

  def testFactorialZero
    assert_equal 1, factorial(0)
  end

  def testFactorialOne
    assert_equal 1, factorial(1)
  end

  def testFactorialFour
    assert_equal 24, factorial(4)
  end

  def testSumOfDigitsIn234
    assert_equal 9, sumOfDigits(234)
  end

end