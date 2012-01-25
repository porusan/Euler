require 'test/unit'
require './lib011.rb'

class Test011 < Test::Unit::TestCase

  @@knownData = [
    [7, 3, 1, 6, 7], 
    [9, 6, 9, 8, 3], 
    [8, 5, 8, 6, 1], 
    [1, 2, 5, 4, 0], 
    [6, 6, 8, 9, 6]]

  def testReadArrayFromFile
    assert_equal @@knownData, readArray('./testData011.txt')
  end

  def testTranspose315
    transposed = [[7], [9, 3], [8, 6, 1], [1, 5, 9, 6],
      [6, 2, 8, 8, 7], [6, 5, 6, 3], [8, 4, 1], [9, 0], [6]]
    
    assert_equal transposed, transpose315(@@knownData)
  end
  
  def testTranspose45
  
    transposed = [[7], [6, 3], [1, 8, 1], [3, 9, 6, 0],
      [7, 6, 8, 4, 6], [9, 5, 5, 9], [8, 2, 8], [1, 6], [6]]
    
    assert_equal transposed, transpose45(@@knownData)

  end
  
  def testTranspose180
    transposed = [
    [7, 9, 8, 1, 6],
    [3, 6, 5, 2, 6],
    [1, 9, 8, 5, 8],
    [6, 8, 6, 4, 9],
    [7, 3, 1, 0, 6]]
    
    assert_equal transposed, transpose180(@@knownData)
  
  end

end
