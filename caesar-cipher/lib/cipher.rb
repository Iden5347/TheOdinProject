def caesar_cipher (string, shift)
  encrypted_word = ""
  string.each_char do |c|
    number = c.ord
    if c.match?(/[[:alpha:]]/)
      if c.ord < 91
        number = (number - 65 + shift) % 26 + 65
      else
        number = (number - 97 + shift) % 26 + 97
      end
    end
    encrypted_word += number.chr
  end
  return encrypted_word
end