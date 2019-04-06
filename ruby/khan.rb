#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

url = 'https://www.khanacademy.org/profile/XSLTGod/'

# Fetch and parse HTML document
uri = URI.parse(url)
puts "Visiting #{url}"
doc = Nokogiri::HTML(uri.open)

res = doc.xpath('//script[contains(.,"prefersReducedMotion")]')
         .to_s.scan(/points":(\d+),"prefersReducedMotion/)
if res.size.positive?
  puts res
else
  puts 'Not found'
end
