require 'pry'

def begins_with_r(array)
  test_array = array.select{|word| word.start_with?("r")}
  if test_array.length == array.length
    true
  else
    false
  end
end

def contain_a(array)
  a_array = array.select{|word| word.include?("a")}
end

def merge_data(array1, array2)
  new_array = []
  i = 0
  array2.each do |name_data|
    name_data.each do|name, attribute|
      new_array << array2[0][name].merge(array1[i])
      i += 1
    end
  end
  new_array
end

def first_wa(array)
  new_array = array.map {|a| a.to_s}
  new_array.find {|word| word.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if{|a| a.class != String}
end

def count_elements(array)
  count_array = []
  unique_elements = array.uniq

  unique_elements.each do |element|
    count = array.count(element)
    element[:count] = count
    count_array << element
  end
end

def find_cool(array)
  cool_people = []
  array.each do |person|
    person.each do |attribute, value|
      if value == "cool"
        cool_people << person
      end
    end
  end
  cool_people
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |school, location_info|
    location_info.each do |attribute, location|
      if schools_by_location.has_key?(location)
        schools_by_location[location] << school
      else
        schools_by_location[location] = [school]
      end
    end
  end
  schools_by_location
end
