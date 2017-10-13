# your code goes here
def begins_with_r(collection)
  collection.all? { |word| word < "s" && word > "q"}
end

def contain_a(collection)
  collection.select do |word|
    word.include?("a")
  end
end

def first_wa(collection)
  collection.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(collection)
  new_array = []
  collection.each do |element|
    if element.is_a? String
      new_array.push(element)
    end
  end
  new_array
end

def count_elements(collection)
  return_array = []
  count_array = []
  i = 0
  while i < collection.size
    count_array = collection.select do |element|
      element == collection[i]
    end
    return_array.push({collection[i].keys[0] => collection[i].values[0], :count => count_array.size})
    i += 1
    count_array = []
  end
  return_array = return_array.uniq
end

def merge_data(h1, h2)
h3 = []
  i = 0
  while i < h1.size
    h3.push (h1[i].merge(h2[0][h2[0].keys[i]]))
    i += 1
  end
  h3
end

def find_cool(collection)
  return_array = []
  collection.each do |element|
    if element.has_value?("cool")
      return_array.push(element)
    end
  end
  return_array
end

def organize_schools(collection)
  schools = collection.keys
  nyc_array = []
  sf_array = []
  chi_array = []
  collection.each do |key, value|
  if value[:location] == "NYC"
    nyc_array.push(key)
  elsif value[:location] == "SF"
    sf_array.push(key)
  elsif value[:location] == "Chicago"
    chi_array.push(key)
  end
end
return {"NYC" => nyc_array, "SF" => sf_array, "Chicago" => chi_array}
end
