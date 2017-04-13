require 'test/unit'
require './lib021.rb'
require '../003/lib003.rb'

class Test021 < Test::Unit::TestCase

  def test01_DivisorsOfThree
    assert_equal [1], getProperDivisorsFromPrimeFactors(getPrimeFactors(3)).sort!
  end

  def test02_DivisorsOfSix
    assert_equal [1, 2, 3], getProperDivisorsFromPrimeFactors(getPrimeFactors(6)).sort!
  end

  def test03_DivisorOfThirty
    assert_equal [1, 2, 3, 5, 6, 10, 15], getProperDivisorsFromPrimeFactors(getPrimeFactors(30)).sort!
  end

  def test04_DivisorOfFourFactors
    assert_equal [1, 2, 3, 5, 6, 7, 10, 14, 15, 21, 30, 35, 42, 70, 105], getProperDivisorsFromPrimeFactors([2, 3, 5, 7]).sort!
  end

  def test05_DivisorOfTwelve
    assert_equal [1, 2, 3, 4, 6], getProperDivisorsFromPrimeFactors(getPrimeFactors(12)).sort!
  end

  def test06_SumOfDivisorsOfTwelve
    assert_equal 16, sumOfProperDivisors(12)
  end

end