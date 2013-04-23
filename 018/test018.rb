require 'test/unit'
require './lib018.rb'

class Test018 < Test::Unit::TestCase

  @@testData = [[10], [20, 70], [33, 8, 52], [10, 1, 25, 14]]

  def testKnownData
    assert_equal 157, calcTriangleMaxPath(@@testData)
  end

end