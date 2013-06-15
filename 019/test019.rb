require 'test/unit'
require './lib019.rb'

class Test019 < Test::Unit::TestCase

  def testIsLeapYear1900
    assert_equal false, simpleIsLeapYear(1900)
  end

  def testIsLeapYear1901
    assert_equal false, simpleIsLeapYear(1901)
  end

  def testisLeapYear1904
    assert_equal true, simpleIsLeapYear(1904)
  end

  def testisLeapYear200
    assert_equal true, simpleIsLeapYear(2000)
  end

  def testCountSundaysIn2013
    assert_equal 2, countSundaysInYear(2013)
  end

  def testCountSundaysIn2012
    assert_equal 3, countSundaysInYear(2012)
  end

end