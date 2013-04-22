require 'test/unit'
require './lib015.rb'

class Test015 < Test::Unit::TestCase

  def testCombination4choose2
    assert_equal(6, combinaton(4, 2))
  end

  def testCombination4choose1
    assert_equal(4, combinaton(4, 1))
  end

  def testCombination4choose4
    assert_equal(1, combinaton(4, 4))
  end

  def testCombination4choose0
    assert_equal(1, combinaton(4, 0))
  end

end