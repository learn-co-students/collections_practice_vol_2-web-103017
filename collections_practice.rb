def begins_with_r(elements)
  elements.each do |element|
    if element[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(elements)
  with_a = []
  elements.each do |element|
    if element.include?("a")
      with_a << element
    end
  end
  with_a
end

def first_wa(elements)
  elements.each do |element|
    to_string = element.to_s
    if to_string.start_with?("wa")
      return to_string
    end
  end
end

def remove_non_strings(elements)
  elements.grep(String)
end

def count_elements(array)
  counts = {}

  counts.default = 0
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
   counts.keys
end
count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
def merge_data(keys, data)
  merge = []
  names = keys.collect {|info| info[:name]} # [blake, ashley]
  data.each do |hash|
    hash.each do |key, value|
      value[:first_name] = key
      merge << value
    end
  end
  merge
end

def find_cool(elements)
  elements.each do |element|
    element.each do |key, value|
      if value == "cool"
        return [element]
      end
    end
  end

end
def organize_schools(schools)
  organize_schools = {}
  schools.each do |school, school_info|
    if organize_schools.include?(school_info[:location])
      organize_schools[school_info[:location]] << school
    else
      organize_schools[school_info[:location]] = [school]
    end
  end
  organize_schools
end
