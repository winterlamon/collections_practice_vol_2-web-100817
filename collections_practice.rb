require 'pry'

def begins_with_r(array)
  if array.all? do |word|
    word.start_with?("r")
    end
      return true
  else
      return false
  end
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include? "a"
    a_array << word
    end
  end
  return a_array
end

def first_wa(array)
  array.find do |element|
    element.to_s.include?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  new_array = []
  array.uniq.each do |element|
    new_array << element
    element[:count] = array.count(element)
  end
   new_array
end


def merge_data(keys, data)
  merged_hash = []
  merged_data = []
  keys.collect do |hash_key|
    merged_hash << hash_key
    data.collect do |data_hash|
      data_hash.collect do |name, attributes|
        if hash_key.values == [name]
          merged_hash << attributes
          merged_data << merged_hash.reduce(:merge)
        end
      end
    end
  end
 merged_data
end


def find_cool(array)
  cool_array = []
  array.collect do |element|
    if element[:temperature] == "cool"
      cool_array << element
    end
  end
  cool_array
end


def organize_schools(schools)
  new_hash = {}
  schools.collect do |school, school_data|
    school_data.collect do |location_key, city|
      if new_hash[city] == nil
        new_hash[city] = []
        new_hash[city] << school
      else new_hash[city].class == Array
        new_hash[city] << school
      end
    end
  end
  new_hash
end
