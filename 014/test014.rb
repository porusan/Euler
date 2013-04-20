require 'test/unit'
require './lib014.rb'

class Test014 < Test::Unit::TestCase

  def testCalculateCollatzOrbit13
    assert_equal 10, calculateCollatzOrbit(13)
  end

  def testCalculateCollatzOrbit8
    assert_equal 4, calculateCollatzOrbit(8)
  end

  def testCalculateCollatzOrbit3
    assert_equal 8, calculateCollatzOrbit(3)
  end

end
