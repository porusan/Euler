require 'test/unit'
require './lib003'

class Test003 < Test::Unit::TestCase

  #-------------------------
  # Test isPrime
  #-------------------------
  def testIsPrime2
    assert isPrime(2), '2 is a prime number!'
  end
  
  def testIsPrime3
    assert isPrime(3), '3 is a prime number!'
  end

  def testIsPrime13
    assert isPrime(13), '13 is a prime number!'
  end
  
  def testIsPrime14
    assert ! isPrime(14), '14 is not a prime number!'
  end
  
  def testIsPrime101
    assert isPrime(101), '101 is a prime number!'
  end
  
  def testIsPrime221
    assert ! isPrime(221), '221 is not a prime number!'
  end

  #-------------------------
  # Test getNextPrime
  #-------------------------
  def testGetNextPrime2
    n = getNextPrime 2
    assert_equal n, 3
  end
  
  def testGetNextPrime13
    n = getNextPrime 13
    assert_equal n, 17
  end
  
  def testGetNextPrime64
    n = getNextPrime 64
    assert_equal n, 67
  end

  #-------------------------
  # Test getPrimeFactors
  #-------------------------  
  def testPrimeFactorsCount2
    a = getPrimeFactors 2
    
    assert_equal 1, a.length
  end
  
  def testPrimeFactorsContent2
    a = getPrimeFactors 2
    
    if (a.length == 1)
      assert_equal 2, a[0]
    else
      assert false, 'Did not have the correct number of factors.'
    end
  end
    
  def testPrimeFactorsCount10
    a = getPrimeFactors 10

    assert_equal 2, a.length
  end
  
  def testPrimeFacContentLowestIsFirst
    a = getPrimeFactors 10
    
    if (a.length == 2)
      assert_equal 2, a[0]
    else
      assert false, 'Did not have the correct number of factors.'
    end
  end
  
  def testPrimeFacContent10
    a = getPrimeFactors 10

    assert_equal [2, 5], a
  end
  
  def testPrimeFacContent284
    a = getPrimeFactors 284
    
    assert_equal [2, 2, 71], a
  end
  

end
