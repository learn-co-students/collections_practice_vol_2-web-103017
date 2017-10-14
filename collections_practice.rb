# your code goes here
def begins_with_r(array)
  no_r = []
  i = 0
  while i < array.length
    if array[i][0] != "r"
      no_r << array[i][0]
      i += 1
    else
      i += 1
    end
  end
  if no_r.length > 0
    false
  else
    true
  end
end

def contain_a(array)
  yes_a = []
  i = 0
  while i < array.length
    if array[i].include?("a")
      yes_a << array[i]
      i += 1
    else
      i += 1
    end
  end
  yes_a
end

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end

end

def remove_non_strings(array)
  str = []
  i = 0
  while i < array.length
    if array[i].class == String
      str << array[i]
      i += 1
    else
      i += 1
    end
  end
  str
end

def count_elements(array)
  array_count = array.uniq
  array_count.each do |name|
    name[:count] = 0
  end

  array.each do |name|
    array_count.each do |data|
      if name[:name] == data[:name]
        data[:count] += 1
      end
    end


  end
  array_count
end

def merge_data(name, data)
  data_arr = []
  final = []
  data.each do |arr|
    arr.each do |name, trait|
      data_arr << trait
    end
  end

  data_arr.each do |y|
    final << name[data_arr.index(y)].merge(y)
  end
  final
end

def find_cool(cool)
  cool_hash = []
  cool.each do |temps|
    if temps.values.include?("cool") == true
      cool_hash << temps
    end
  end
  cool_hash
end

def organize_schools(schools)
  location_arr = Hash.new
  names = schools.keys
  schools.each do |name, location|
    names << name
    location.each do |cat, st|
      location_arr[st] = []
    end
  end
  schools.each do |name, locations|
    locations.each do |cat, state|
      location_arr[state] << name
    end
  end
  location_arr
end
