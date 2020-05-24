require "open-uri"
require "nokogiri"


page = Nokogiri::HTML(open("https://tenki.jp/amedas/3/"))
contents = {}
page.css("ul.amedas-extreme-pickup-entries li").each do |n|
  contents[n.css('a p.title').text] = {"max" => n.css('a p.temp span.max-temp').text, "min" => n.css('a p.temp span.min-temp').text}
end

p contents
