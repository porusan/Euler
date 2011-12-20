require 'test/unit'
require './003'

class Test003 < Test::Unit::TestCase

  def testPrimeFacCount2
    a = getPrimeFactors 2
    assert_equal 1, a.length
  end
  
  def testPrimeFacContent2
    a = getPrimeFactors 2
    if (a.length == 1)
      assert_equal 2, a[0]
    else
      assert false, 'Did not have the correct number of factors.'
    end
  end
    
  def testPrimeFacCount10

    a = getPrimeFactors 2

    assert_equal 3, a.length

  end

end
