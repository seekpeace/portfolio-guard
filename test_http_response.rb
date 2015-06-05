require 'net/http'
# require 'json'

url = "http://brunchinator.herokuapp.com/"
response = Net::HTTP.get_response(URI.parse(url.to_s))
# response2 = Net::HTTP.get_response(url.to_s)

# response = Net::HTTP.get_response(("http://www.google.com").to_s)
# puts(Net::HTTP.get_response(URI.parse(url.to_s)))

# result = JSON.parse(response.code)
puts "#{response.code}"
puts "this is without the parse"


# puts "#{result.code}"