dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)

  string_array = string.downcase.split #creating a lowercase string array

  match_array = []
  count_array = []

  dictionary.each do |i|
    if string_array.any? { |x| x.include?(i)}
    match_array.push(i)
    end

    count = string_array.count { |x| x.include?(i)}
    count_array.push(count)
    count_array.delete(0)
  end

  puts "the matching elements will be : #{match_array}"
  puts "the number of times they aappeared is : #{count_array}"
end

substrings("below",dictionary)



