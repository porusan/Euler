require 'test/unit'
require './lib007'

class Test007 < Test::Unit::TestCase

  def testGetFirstPrime
    assert_equal 2, getNthPrime(1)
  end
  
  def testGetSixthPrime
    assert_equal 13, getNthPrime(6)
  end
  
  def testGetHundrethPrime
    assert_equal 541, getNthPrime(100)
  end

end
