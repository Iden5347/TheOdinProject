def substrings(string, dictionary)
  word_freq = Hash.new(0)
  string = string.downcase
  dictionary.each do |word|
    for i in 0..(string.length - word.length) do
      if word == string[i...i+word.length]
        word_freq[word] += 1
      end
    end
  end
  return word_freq
end
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("BELOW", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)