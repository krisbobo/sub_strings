def substrings(str, dic)
  str = str.downcase
  dic.reduce(Hash.new(0)) do |acc, word|
    acc[word] += 1 if str.include?(word)
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }