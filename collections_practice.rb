require 'pry'


def begins_with_r(array)
  counter = 0
  newArr = []
  while counter < array.length
    if array[counter].start_with?("r")
      newArr << array[counter]
    end
    counter += 1
  end
  if newArr.length == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  x = 0
  newArr = []
  while x < array.length
    if array[x].is_a? String
      if array[x].start_with?("wa")
        newArr << array[x]
      end
    end
    x += 1
  end
  newArr.shift
end

def remove_non_strings(array)
  i = 0
  string_array = []
  while i < array.length
    if array[i].is_a? String
      string_array << array[i]
    end
    i += 1
  end
  string_array
end

def count_elements(names)
  names.group_by(&:itself)
  .map{|x, y| x.merge(count: y.length)}
end

def merge_data(keys, data)
  new_array = []
  keys.each do |array_of_names|
    name = array_of_names[:first_name]
  data.each do |array_of_values|
    if array_of_values[name]
      merged = array_of_values[name]
      merged[:first_name] = name
      new_array << merged
    end
  end
  end
  new_array
end

def find_cool(word)
  new_array = []
  word.each do |k|
    if k[:temperature] == "cool"
    new_array << k
    end
  end
  new_array
end

def organize_schools(schools)
  new_hash = {}
  schools.collect do |name, attribute_hash|
    location = attribute_hash[:location]
    if new_hash[location]
      new_hash[location] << name
    else new_hash[location] = []
      new_hash[location] << name
    end
  end
  new_hash
end
