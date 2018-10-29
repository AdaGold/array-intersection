# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  # raise NotImplementedError
  intersection = []

  return intersection if array1 == nil || array2 == nil
  return intersection if array1 == [] || array2  == []

  shortest = array1
  longest = array2

  shortest = array2 if array1.length > array2.length
  longest = array1 if array1.length > array2.length

  num_hash = {}

  i = 0
  j = 0

  shortest.length.times do
    num_hash[shortest[i]] = true
    i += 1
  end

  longest.length.times do
    if num_hash[longest[j]] == true
      intersection << longest[j]
    end
    j += 1
  end

  return intersection

end

print intersection([1,2,3,4,5,8,100,56,78], [4,5,6,7,8,0,1])
print intersection([1,2,3,4], [1,2,3,4])
print intersection([4,3,2,1], [1,2,3,4])
