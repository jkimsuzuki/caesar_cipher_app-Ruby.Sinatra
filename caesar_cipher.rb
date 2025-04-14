def alphabet
  ('a'..'z').to_a
end

def caesar_cipher(string, shift)
  string.split('').map do |char| 
    if alphabet.include?(char)
      new_index = (alphabet.index(char) + shift) % 26
    end
    
  end
end

p caesar_cipher('hello', 5)
