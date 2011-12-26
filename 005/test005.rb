require 'test/unit'
require './lib005'

class Test005 < Test::Unit::TestCase

  def testGetLeastGreatestMultiple1to10
    assert_equal 2520, getLeastGreatestMultiple(2..10)
  end

end
