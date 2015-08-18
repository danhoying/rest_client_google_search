require 'rest-client'

print "Please enter a search to make on Google: "
input = gets.chomp

formatted = input.split(" ").join("+")

search_result = RestClient.get "https://www.google.com/#q=#{formatted}"

puts "~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~"
puts ""
puts "RESPONSE BODY:"
puts ""
puts search_result.body
puts ""
puts "~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~"

puts ""
puts "RESPONSE HEADERS:"
puts ""
puts search_result.headers
puts ""
puts "~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~"

puts ""
puts "RESPONSE CODE:"
puts ""
puts search_result.code
puts ""
puts "~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~"

puts ""
puts "COOKIES:"
puts ""
puts search_result
puts ""
puts "~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~+~"