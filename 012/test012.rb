require 'test/unit'
require './lib012.rb'
require '../003/lib003.rb'

class Test012 < Test::Unit::TestCase

  # Test Cases for findTriangleNumber

  def testTriangleNumberSeven
    assert_equal 28, findTriangleNumber(7)
  end

  def testTriangleNumberOne
    assert_equal 1, findTriangleNumber(1)
  end

  def testTriangleNumberZero
    assert_equal 0, findTriangleNumber(0)
  end

  # Test Cases for something else?
  def testFindNumberOfDivisorsOf28
    assert_equal 6, findNumberOfDivisors(getPrimeFactors(28))
  end

  def testFindNumberOfDivisorsOf30
    assert_equal 8, findNumberOfDivisors(getPrimeFactors(30))
  end

  def testFindNumberOfDivisorsOf32
    assert_equal 6, findNumberOfDivisors(getPrimeFactors(32))
  end

end