require "pry"

def begins_with_r(array)
    array.all? do |item|
        item[0] == "r"
    end
end

def contain_a(array)
    array.select do |item|
        item.include?("a")
    end
end

def first_wa(array)
    array.find do |item|
        item.to_s.start_with?("wa")
    end
end

def remove_non_strings(array)
    array.select do |item|
        item if item.class == String
    end
end

def count_elements(array)
    array.each do |hash|
        hash[:count] = 0
        array.each do |hash_with_count|
            if hash[:name] == hash_with_count[:name]
                hash[:count] += 1
            end
        end
    end
    return array.uniq
end

def merge_data(keys, values)
    merged_data = []
    keys.each do |person|
        first_name = person[:first_name]
        values.each do |person_data|
            if person_data[first_name]
                merged_person = person_data[first_name]
                merged_person[:first_name] = first_name
                merged_data << merged_person
            end
        end
    end
    merged_data
end

def find_cool(array)
    coolness = []
    array.each do |hash|
        hash.each do |k, v|
            if v == "cool"
                coolness << hash
            end
        end
    end
    coolness
end

def organize_schools(schools)
    merged_schools = {}
    schools.each do |name, location|
        location = location[:location]
        if merged_schools[location]
            merged_schools[location] << name
        else merged_schools[location] = []
            merged_schools[location] << name
        end
    end
merged_schools
end
