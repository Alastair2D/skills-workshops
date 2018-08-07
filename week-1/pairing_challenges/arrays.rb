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

h1 = { a: 1, b: 2 } #=> { a: 2, b: 3 }
h2 = { a: 2, b: 5, c: 1 } #=> { a: 1, b: 2, c: 5 }
h3 = { a: 2, b: 5, c: 1 } #=> [1, 2, 5]
h4 = { a: 1, b: 2, c: 3 } #=> { "1"=>"a", "2"=>"b", "3"=>"c" }

def hash_first(hash)
  hash.transform_values { |v| v + 1 }
end

def hash_second(hash)
  keys = hash.keys
  values = hash.values
  values.unshift(values.pop)
  keys.zip(values.first(values.length)).to_h
end

def hash_third(hash)
  hash.values.sort
end

def hash_fourth(hash)
  hash.values.zip(hash.keys).to_h
end

