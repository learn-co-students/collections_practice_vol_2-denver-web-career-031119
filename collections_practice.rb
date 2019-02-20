# your code goes here
def begins_with_r(arr)
  arr.all? {|word| word.start_with?("r")}

end

def contain_a(arr)
  arr.select {|word| word.include?("a")}

end

def first_wa(arr)
  arr.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
  arr.select {|str| str.class == String}

end


def count_elements(arr)
  unique = arr.uniq
  output = []
  i = 0

 while i < (arr.length-1)
  count = arr.count(unique[i])
  a = unique[i]
  a[:count] = count
  output << a
  i += 1
 end
 output

end


def merge_data(keys, data)
  output = []
  i = 0
  while i < keys.length
   a = keys[i][:first_name]
  b = data[0][keys[i][:first_name]]
  output << b.merge(keys[i])


  i += 1
  end

  output
end


def find_cool(arr)

  arr.select {|hash| hash[:temperature] == "cool"}
end




def organize_schools(arg)
  new = Hash.new
  arg.each do |k,v|
    if new.has_key?(v[:location])
      new[v[:location]] << k
    else
      new[v[:location]] = [k]
    end

  end
  new
end
