# your code goes here
def begins_with_r(array)
  array.all? {|item| item.split("").first == "r"}
end

def contain_a(array)
  a_words = []
  array.each do |word|
    if word.split("").any?{|letter| letter == "a"}
      a_words << word
    end
  end
  a_words
end

# Return first element that starts with "wa"
def first_wa(array)
  array.find do |word|
    # Set the word to string first, test array includes non-strings
    if word.to_s.split("").first(2).join == "wa"
      return word
    end
  end
end

#Remove anything that is not a string in the array
def remove_non_strings(array)
  array_of_strings = []
  array.each do |item|
    if item.is_a?(String)
      array_of_strings << item
    end
  end
  array_of_strings
end

# Count how many times something appears in an array
def count_elements(array)
  hash_array = []
  array.each do |name_hash|
    name_hash.each do |category, name|
      new_hash = {
        :name => name,
        :count => array.count({category => name})
      }
      hash_array << new_hash
    end
  end
  hash_array.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |person|
    first_name = person[:first_name]
    data.each do |person_data|
      if person_data[first_name]
        array << person.merge(person_data[first_name])
      end
    end
  end
  array
end

def find_cool(cool)
  array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      array << person
    end
  end
  array
end


def organize_schools(schools)
  organized = {}
  schools.each do |school_name, location|
    loc = location[:location]
    if organized[loc]
      organized[loc] << school_name
    else
      organized[loc] = []
      organized[loc] << school_name
    end
  end
  organized
end
