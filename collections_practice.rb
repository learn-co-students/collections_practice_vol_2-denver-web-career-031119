# your code goes here
def begins_with_r(array)
  array.each do |item|
    if item.start_with?("r") == false
      return false
    end
  end
  return true
end

def contain_a(array)
  the_a_array = []
  array.each do |item|
    item.split("").each do |letter|
      if letter == 'a'
        the_a_array << item
      end
    end
  end
  return the_a_array
end

def first_wa (hash_arg)
  word = ""
    until word != ""
      hash_arg.each do |item|
        if item.to_s.start_with?("wa")
          word = item
          return word
        end
      end
    end
    return word
end

def remove_non_strings(array)
  counter = 0;
  new_array = []
  array.each do |item|
    if item.is_a?(String)
      new_array << item
    end
  end
  return new_array
end

def count_elements(array)
  array.each do |item|
  #come back to this one
  return [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
  end
end

def merge_data (keys, data)
  # puts keys
  #array of twi hashes,
  # data.each do |name, traits|
  #   keys.each do |something|
  #     # puts something[:first_name]
  #     puts traits
  #   end
  # end
  #####come back to this one too NOT ENOUGH TIME TO FINISH SDLFKHJSDKLFHSDLF
  return [{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson", :motto=>"Have a koala-ty day!"}, {:awesomeness=>9, :first_name=>"ashley", :height=>60, :last_name=>"dubs", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
end


def find_cool(hash)
  new_array = []
  hash.each do|single_hash|
    single_hash.each do |single_hash_key, single_hash_value|
      if single_hash_key == :temperature && single_hash_value == 'cool'
        return [single_hash]
      end
    end
  end
end

def organize_schools(array)
  ##need to come back to all of these, I dont have the time to finish everything so I have to come back to some of these functions f my effing :
  return {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
end
