### Challenge Set 1: Arrays

Transform the following first arrays into the second entities:

arr1 = [1, 2, 3, 4, 5] #=> [2, 3, 4, 5, 6]
arr2 = [1, 3, 5, 4, 2] #=> [1, 2, 3, 4, 5]
arr3 = [1, 3, 5, 4, 2] #=> [2, 3, 4, 5, 6]
arr4 = [1, 2, 3, 4, 5] #=> 15 (the sum)
arr5 = [1, 2, 3, 4, 5] #=> 30

def array_first(array)
  array.map(&:succ)
end

def array_second(array)
  array.sort!
end

def array_third(array)
  array_first(array_second(array))
end

def array_fourth(array)
  array.inject { |sum, element| sum + element }
end

def array_fifth(array)
  2 * array_fourth(array)
end
