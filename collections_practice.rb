def begins_with_r(array)
 array.all? { |item| item[0]== "r" }
end

def contain_a(array)
  array.select { |item| item.include? "a" }
end

def first_wa(array)
  array.find { |item| item[0..1]=="wa" }
end

def remove_non_strings(array)
array.select {|item| item.class==String}
end

def count_elements(array)
  array.uniq.each {|name| count = 0 #we will compare to these names
    array.each {|name_repeat| if name_repeat == name then count += 1 end} #if it has the name it will count
    name[:count] = count} #tells which name was counted how many times
end

def merge_data(keys, data)
   keys.map {|key| key.merge(data[0][key[:first_name]].to_h) }
end

def find_cool(array)
array.select {|item| item[:temperature]=="cool"}
end

def organize_schools(schools)
  by_location = {}
   schools.each {|key, value|
     if(by_location[value[:location]] == nil)
      by_location[value[:location]] = [key]
     else
       by_location[value[:location]] << key
     end }
  by_location
end
