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

  # Test Cases for improved find divisors functions
  def  testCalcNumberOfDivisorsOf2
    assert_equal 2, calculateNumberOfDivisors(getPrimeFactors(2))
  end

  def testCalcNumberOfDivisorsOf28
    assert_equal 6, calculateNumberOfDivisors(getPrimeFactors(28))
  end

  def testCalcNumberOfDivisorsOf30
    assert_equal 8, calculateNumberOfDivisors(getPrimeFactors(30))
  end

end