# implement substrings, that takes a word as the first argument.
# Should return a hash listing each substring (case insensitive)
# that was found in the original string & how many times it was found

def substrings(word, dictionary)
  result = Hash.new(0)
  word = word.downcase

  dictionary.each do |sub|
    sub = sub.downcase
    count = word.scan(/(?=#{Regexp.escape(sub)})/).count
    result[sub] += count if count > 0
  end
  result
end