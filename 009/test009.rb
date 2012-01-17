require 'test/unit'
require './lib009.rb'

class Test009 < Test::Unit::TestCase

  def test1And2And3IsNotTriplet
    assert ! isPythTriplet([1, 2, 3]), 
      '1, 2, 3 is not a Pythagorean triplet!'
  end
  
  def test3And4And5IsTriplet
    assert isPythTriplet([3, 4, 5]),
      '3, 4, 5, is a Pythagorean triplet!'
  end
  
  def test5And12And13IsTriplet
    assert isPythTriplet([5, 12, 13]),
      '5, 12, 13 is a Pythagorean triplet!'
  end
  
  def testGenSeed3And7
    assert isPythTriplet(genPythTriplet(7, 3))
  end
  
  def testGenSeed4And6
    assert isPythTriplet(genPythTriplet(6, 4))
  end

end
