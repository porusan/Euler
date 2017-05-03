require 'test/unit'
require './lib026.rb'

class Test026 < Test::Unit::TestCase

  def test01_1over2
    assert_equal 0, getDecimalPeriod(2)
  end

  def test02_1over5
    assert_equal 0, getDecimalPeriod(5)
  end

  def test03_1over100
    assert_equal 0, getDecimalPeriod(100)
  end

  def test04_1over3
    assert_equal 1, getDecimalPeriod(3)
  end

  def test05_1over6
    assert_equal 1, getDecimalPeriod(6)
  end

  def test06_1over7
    assert_equal 6, getDecimalPeriod(7)
  end

  def test07_1over44
    assert_equal 2, getDecimalPeriod(44)
  end

  def test08_totient3
    assert_equal 2, phi(3)
  end

  def test09_totient101
    assert_equal 100, phi(101)
  end

  def test10_totient27
    assert_equal 18, phi(27)
  end

  def test11_totient6
    assert_equal 2, phi(6)
  end

  def test12_totient792
    assert_equal 240, phi(792)
  end

  def test13_multOrd7
    assert_equal 6, multiplicativeOrderOf10(7)
  end

  def test14_multOrd9
    assert_equal 1, multiplicativeOrderOf10(9)
  end

  def test14_multOrd11
    assert_equal 2, multiplicativeOrderOf10(11)
  end

  def test14_multOrd129
    assert_equal 21, multiplicativeOrderOf10(129)
  end

  def test15_decimalPeriod129
    assert_equal 21, getDecimalPeriod(129)
  end

end
