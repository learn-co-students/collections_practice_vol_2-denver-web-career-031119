def begins_with_r(tools)
  tools.each do |tool|
    if tool[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(elements)
  elements_with_a = []
  elements.each do |element|
    if element.include?("a")
      elements_with_a << element
    end
  end
  return elements_with_a
end

def first_wa(words)
  words.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(data)
  data.select do |d|
    d == d.to_s
  end
end

def count_elements(elements)
  element_count = {}
  elements.each do |ele|
    name = ele[:name]
    if element_count.has_key?(name)
      element_count[name] += 1
    else
      element_count[name] = 1
    end
  end
  
  counted_elements = []
  element_count.each do |name, count|
    counted_elements << {:name => name, :count => count}
  end
  return counted_elements
end

def merge_data(keys, data)
  retrieved_data = data[0]
  keys.each do |key|
    first_name = key[:first_name]
    name_data = retrieved_data[first_name]
    key.each do |k, v|
      name_data[k] = v
    end
    #    name_data[:first_name] = first_name
    #    name_data[:motto] = key[:motto]
  end
  
  return retrieved_data.values
end

def find_cool(names)
  return names.select { |name| name[:temperature] == "cool" }
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location|
    city = location[:location]
    if organized_schools.has_key?(city)
      organized_schools[city] << school
    else
      organized_schools[city] = [school]
    end
  end
  return organized_schools
end
