def caesar_cipher(string, shift_factor)
  alphabet = ("a".."z").to_a
  alphabet = alphabet.reverse if shift_factor.negative?
  shift_factor = shift_factor.abs

  string.each_char.with_index do |char, i|
    if alphabet.include?(char.downcase)
      j = alphabet.find_index(char.downcase) + shift_factor
      j = (j % 26) if j > 25
      char == char.downcase ? char = alphabet[j] : char = alphabet[j].upcase
      string[i] = char
    end
  end
end