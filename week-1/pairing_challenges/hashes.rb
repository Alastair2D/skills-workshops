### Challenge Set 2: Hashes

# Transform the following first hashes into the second entities:

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
