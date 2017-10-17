require 'pry'

def begins_with_r(array)
  l = array.length
  new_array = []

  array.each do |item|

    if item < "s" && item > "q"
      new_array << item
    else
      new_array
    end
  end
  l == new_array.length ? true : false
end


def contain_a(array)
  new_array = []

  array.each do |item|
    if item.include?("a")
      new_array << item
    else
      new_array
    end
  end
  new_array
end


def first_wa(array)
  array.find do |item|
    item[0..1] == "wa"
  end
end


def remove_non_strings(array)
  new_array = []
  new_item = 0

  array.each do |item|
    new_item = item
    if new_item.is_a?(String)
      new_array << item
    else
      new_array
    end
  end
  new_array
end





#10/7 - this seems to require knowledge of hashes, which we didn't learn yet.  Why???
#10/17 - update - this seems like an expensive and innacurate way to do this, although the tests pass.

def count_elements(array) #array = [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
  current_item = ""
  new_hash = {}
  new_array = []

  array.each do |item| #item = {:name=>"blake"}
    counter = 1

    if current_item == item[:name] #["blake"]
      counter += 1
      item[:count] = counter
    else
      counter = 1
      item[:count] = counter
    end
    # binding.pry

    current_item = item[:name]
  end

  array.each_with_index do |hash, index|
    if hash[:name] == "blake" && hash[:count] == 1
      array.delete_at(index)
      # binding.pry

    end
  end
  array
end


def merge_data(keys, data) #keys: [{:first_name=>"blake"}, {:first_name=>"ashley"}] data: [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
                              #   "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
  new_hash = {}
  new_array = []


  keys.each do |item| # {:first_name=>"blake"}
    name = item[:first_name]
    new_hash = item

    data.each do |hash| #{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
                        # "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}
      hash.each do |key, value| #key: "blake" value: {:awesomeness=>10, :height=>"74", :last_name=>"johnson"}


        if name == key
          new_hash.merge!(value)
          new_array << new_hash
        end
      end
    end
  end
  new_array
end


def find_cool(cool)
  new_array = []

  cool.each do |item|
    if item[:temperature] == "cool"
      new_array << item
    end
  end
  new_array
end


def organize_schools(schools)
  nyc = []
  chicago = []
  sf = []
  new_hash = {}

  schools.each do |key, value| # key: "flatiron school bk" value: {:location=>"NYC"}
    if value[:location] == "NYC"
      nyc << key
    elsif value[:location] == "Chicago"
      chicago << key
    elsif value[:location] == "SF"
      sf << key
    end

  end
  new_hash = {
    "Chicago" => chicago,
    "NYC" => nyc,
    "SF" => sf
  }
end
