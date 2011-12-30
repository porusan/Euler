require 'test/unit'
require './lib005'

class Test005 < Test::Unit::TestCase

  def testGetLeastGreatestMultiple2And3
    assert_equal 6, getLeastGreatestMultiple([2,3])
  end
  
  def testGetLeastGreatestMultiple6And10
    assert_equal 30, getLeastGreatestMultiple([6,10])
  end

  def testGetLeastGreatestMultiple1to10
    assert_equal 2520, getLeastGreatestMultiple(2..10)
  end

end
