require 'test/unit'
require './lib025.rb'

class Test025 < Test::Unit::TestCase

  def test1Equals1
      assert_equal(1, numberOfDigits(1))
  end

  def test1000Equals4
      assert_equal(4, numberOfDigits(1000))
  end

end