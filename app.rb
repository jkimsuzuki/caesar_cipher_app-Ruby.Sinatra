require 'sinatra'

def caesar_cipher(string, shift)
  lowercase = ('a'..'z').to_a
  uppercase = ('A'..'Z').to_a

  string.split('').map do |char|
    if lowercase.include?(char)
      new_index = (lowercase.index(char) + shift) % 26
      lowercase[new_index]
    elsif uppercase.include?(char)
      new_index = (uppercase.index(char) + shift) % 26
      uppercase[new_index]
    else
      char
    end
  end.join
end

get '/' do
  erb :index
end

post '/cipher' do
  text = params[:text]
  shift = params[:shift].to_i
  @result = caesar_cipher(text, shift)
  erb :index
end
