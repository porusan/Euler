require 'test/unit'
require './lib023.rb'

class Test023 < Test::Unit::TestCase

  def test01_checkTwelveIsAbundant
    assert isAbundant(12)
  end

  def test02_check28IsNotAbundant
    assert_equal false, isAbundant(28)
  end

  def test03_checkSevenIsNotAbundant
    assert_equal false, isAbundant(7)
  end

  def test04_checkEightIsSumOfAbundantNumbers
    assert_equal false, isSumOfTwoAbundantNumbers(8)
  end

  def test05_check24IsSumOfTwoAbundantNumbers
    assert isSumOfTwoAbundantNumbers(24)
  end

  def test06_check40IsSumOfTwoAbundantNumbers
    assert isSumOfTwoAbundantNumbers(40)
  end

  def test07_check23IsSumOfTwoAbundantNumbers
    assert_equal false, isSumOfTwoAbundantNumbers(23)
  end

  def test08_check23IsSumOfTwoAbundantNumbers
    assert_equal false, isSumOfTwoAbundantNumbers(23)
  end

  def test09_check945IsAbundant
    assert isAbundant 945
  end

end