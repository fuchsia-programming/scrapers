#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

url = 'https://www.khanacademy.org/profile/XSLTGod/'

# Fetch and parse HTML document
puts "Visiting #{url}"
doc = Nokogiri::HTML(open(url))

res = doc.xpath('//script[contains(.,"prefersReducedMotion")]')
         .to_s.scan(/points":(\d+),"prefersReducedMotion/)
if res.size.positive?
  puts res
else
  puts 'Not found'
end
