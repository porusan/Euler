require 'test/unit'
require './002'

class EulerTest002 < Test::Unit::TestCase
  
  def testFibBaseCase0
    assert_equal 0, fib(0)
  end
  
  def testFibBaseCase1
    assert_equal 1, fib(1)
  end
  
  def testFibBaseCase2
    assert_equal 2, fib(2)
  end
  
  def testFibCalc3
    assert_equal 3, fib(3)
  end
  
  def testFibCalc10
    assert_equal 89, fib(10)
  end
  
  def testSum0
    assert_equal 0, calcEvenFibUpToValue(0)
  end
  
  def testSum100
    assert_equal 44, calcEvenFibUpToValue(100)
  end
  
  def testAnswer
    puts calcEvenFibUpToValue(4000000)
  end
  
end
