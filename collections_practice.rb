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

=begin

merge_data = {
  [
    {:first_name => "blake"
      "blake", :awesomeness => 10, :height => "74", :last_name => "johnson"},
    {:first_name => "ashley", :awesomeness => 9,:height => 60, :last_name => "dubs"}
  ]
}

{:first_name=>"blake"}
["blake"=>
   {:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
{:first_name=>"ashley"}
"ashley"=>
   {:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]

   keys => [{:first_name=>"blake"}, {:first_name=>"ashley"}]
   data => [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=> {:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]




   keys => [{:first_name=>"blake"}, {:first_name=>"ashley"}]

   data => [{
   "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
   "ashley"=> {:awesomeness=>9, :height=>60, :last_name=>"dubs"}
   }]





=end

def merge_data(keys, data)
  merged_hash = []
  keys.collect do |hash_key|
    merged_hash << hash_key

    data.collect do |data_hash|
      data_hash.collect do |name, attributes|
        hash_key.values == [name]

          merged_hash << attributes
binding.pry
          merged_hash.reduce(&:merge)
        #end
      end
    end
#    hash_key
  end


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
