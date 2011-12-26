require 'test/unit'
require './lib004'

class Test004 < Test::Unit::TestCase

  def testIsPalindrome2001
    assert ! isPalindrome(2001), '2001 is not a palindrome' 
  end

  def test2
    assert isPalindrome(2002), '2002 is a palindrome'
  end

  def testIsPalindrome300
    assert ! isPalindrome(300), '300 is not a palindrome'
  end

  def testIsPalindrome303
    assert isPalindrome(303), '303 is a palindrome'
  end

end
