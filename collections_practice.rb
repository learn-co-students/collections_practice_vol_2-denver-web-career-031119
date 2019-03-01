# your code goes here
def begins_with_r(alpha)
  alpha.all? { |word| word[0] == "r"}
end

def contain_a(alpha)
  alpha.find_all { |word| word.include?("a")}
end

def first_wa(alpha)
  alpha.find { |word| word[0] == "w" && word[1] == "a"}
end

def remove_non_strings(alpha)
  alpha.delete_if { |word| word != word.to_s}
end

def count_elements(alpha)
  result = alpha.uniq.map {|word| {:name => word[:name], :count=> alpha.count(word)}}
  result
end

def merge_data(keys, data)
  result = []
  i = 0
  data.each do |the_data|
    the_data.each do |name, word|
      result << word.merge(keys[i])
      i += 1
    end
  end
  return result
end

def find_cool(alpha)
  alpha.select {|my_hash| my_hash.has_value?("cool")}
end

def organize_schools(schools)
  result = {}
  schools.each do |key, value|
    if result[value[:location]] != nil
      result[value[:location]] << key
    else
      result[value[:location]] = [key]
    end
  end
  return result
end



#if anyone is reading this.. I hope you felt my pain too
