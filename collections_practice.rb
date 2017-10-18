def begins_with_r(array)
  array.each do |element|
    return false if element[0] != "r"
  end
  return true
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.each do |element|
    return element if element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element == element.to_s
  end
end


def count_elements(array)
  count_array = array.uniq
  count_array.each do |element|
    element[:count] = array.count(element)
  end
end


def merge_data(keys, data)
  array = data.collect {|hash| hash.collect {|key, value| value}}.flatten
  i = -1
  keys.collect do |hash|
      i += 1
    hash.merge(array[i])
  end
end


def find_cool(array)
  array.collect do |hash|
    hash if hash[:temperature] == "cool"
  end.compact
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |school, location_hash|
    location_hash.each do |location, place|
      if new_hash.has_key?(place)
        new_hash[place] << school
      else
        new_hash[place] = [school]
      end
    end
  end
  new_hash
end
