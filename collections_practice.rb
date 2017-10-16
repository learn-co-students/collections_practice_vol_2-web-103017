require "pry"


def begins_with_r(arg)
  output = 1
  arg.each do |element|
    if element[0] == "r"
      output *= 1
    else output *= 0
    end
  end
  if output == 1
    true
  else
    false
  end
end

def contain_a(array)
  output = []
  array.each do |element|
    if element.include?("a")
      output << element
    end
  end
  output
end

def first_wa(array)
  array.each do |element|
    if element[0..1] == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  output = []
  array.each do |element|
    if element.is_a? String
      output << element
    end
  end
  output
end

def count_elements(array)
  output = {}
  array.each do |element|
    if output.include? element[:name]
      output[element[:name]] += 1
    else
      output[element[:name]] = 1
    end
  end
  final_output = []
  output.each do |name, number|
    final_output <<
    {
      name: name,
      count: number
    }
  end
  final_output
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    name = key[:first_name]
    data.each do |hash|
      hash[name][:first_name] = name

      merged_data << hash[name]
    end
  end
  merged_data
end

def find_cool(cool)
  output = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      output << hash
    end
  end
  output
end

def organize_schools(schools)
  output = {}
  schools.each do |school_name, location|
    loc_name = location[:location]

    if output[loc_name] == nil
      output[loc_name] = []
      output[loc_name] << school_name
    else
      output[loc_name] << school_name
    end
  end
  output
end
# your code goes here
