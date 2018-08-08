### Challenge Set 1: Arrays

# Transform the following first arrays into the second entities:

arr1 = [1, 2, 3, 4, 5] #=> [2, 3, 4, 5, 6]
arr2 = [1, 3, 5, 4, 2] #=> [1, 2, 3, 4, 5]
arr3 = [1, 3, 5, 4, 2] #=> [2, 3, 4, 5, 6]
arr4 = [1, 2, 3, 4, 5] #=> 15 (the sum)
arr5 = [1, 2, 3, 4, 5] #=> 30

def a1(array)
  array.map(&:succ)
end

def a2(array)
  array.sort!
end

def a3(array)
  a1(a2(array))
end

def a3v2(array)
  array_plus_one = a1(array)
  array_plus_one_sorted = a2(array_plus_one)
  array_plus_one_sorted
end

def a4(array)
  array.inject { |sum, element| sum + element }
end

def a5(array)
  2 * a4(array)
end
