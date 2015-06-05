require 'net/http'

# task :check do

# require 'json'
# projects.each do |project|
# 	url = project.url
	url = "http://brunchinator.herokuapp.com/"
	response = Net::HTTP.get_response(URI.parse(url.to_s))
	status = response.code

# response2 = Net::HTTP.get_response(url.to_s)

# response = Net::HTTP.get_response(("http://www.google.com").to_s)
# puts(Net::HTTP.get_response(URI.parse(url.to_s)))

# result = JSON.parse(response.code)
puts "#{status}"


# end