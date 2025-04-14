def alphabet
  @alphabet = ('a'..'z').to_a
end

def caesar_cipher(string, shift)
  string.split('').map { |char| alphabet.index(char) }
  
end

p caesar_cipher("hello", 5)
