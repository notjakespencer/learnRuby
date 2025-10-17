# Implement a caesar cipher that takes in a string
# and the shift factor, and then outputs the modified
# string using a RIGHT shift.

def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char is a letter
      base = char is uppercase ? 'A'.ord : 'a'.ord
      shifted = ((char.ord - base + shift) % 26) + base
      result += shifted.char
    else
      result += char
    end
  end
  return result
end

