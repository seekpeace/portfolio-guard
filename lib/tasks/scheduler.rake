require 'net/http'

# task :check do
task :check => :environment do
	Project.all.each do |project|
		puts "#{project.name}"
		url = project.url
		puts "#{url}"
		response = Net::HTTP.get_response(URI.parse(url.to_s))
		status = response.code
		puts "#{status}"
		status = status.to_i
			unless status.between?(200, 399)
			# email if http return status indicates site is not up
				UserMailer.down_email(project).deliver_now
			end
		end
	# 	url = project.url
	# url = "http://brunchinator.herokuapp.com/"
	# response = Net::HTTP.get_response(URI.parse(url.to_s))
	# status = response.code

# response2 = Net::HTTP.get_response(url.to_s)

# response = Net::HTTP.get_response(("http://www.google.com").to_s)
# puts(Net::HTTP.get_response(URI.parse(url.to_s)))

# result = JSON.parse(response.code)
# puts "#{status}"


end
