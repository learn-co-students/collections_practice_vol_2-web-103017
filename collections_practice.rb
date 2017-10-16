# your code goes here
# your code goes here
def begins_with_r(array)
  array.all?{|el| el[0] == "r"}
end

def contain_a(array)
  array.select{|word| word.include?("a")}
end

def first_wa(array)
  array.select{|el| el[0] == "w" && el[1] == "a"}.first
end

def remove_non_strings(array)
  array.select{|el| el.is_a?(String)}
end

def count_elements(array)
  new_h = Hash.new(0)
  final = []

  array.each do |hash|
    hash.each do |key, value|
      new_h[value] += 1
    end
  end

  new_h.each do |name, value|
    final << {:name => name, :count => value}
  end
  final

end


def merge_data(keys, data)

  final_array = []

  data.each do |hash|
    hash.each do |key, value|
        final_array << value
    end
  end

  keys.each_with_index do |hash, i|
    final_array[i].merge!(hash)
  end

  final_array
  end

def find_cool(array)
  output = []
  array.each do |hash|
    hash.each do |k,v|
      if v == "cool"
        output << hash
      end
    end
  end
  output
end

def organize_schools(schools)
  hash = {}
  locations = []

  schools.each do |school, info_hash|
    info_hash.each do |location_key, location|
      locations << location
    end
  end

  locations.uniq!

  locations.each do |place|
    hash[place] = []
  end



  schools.each do |school, info_hash|
    info_hash.each do |location_key, location|
      hash[location] << school
    end
  end

  hash
end
