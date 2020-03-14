require "pry"
require 'nokogiri'
require 'open-uri'

class BrooklynMuseum::Scraper

def self.get_page
  doc = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))
end 

def self.get_exhibitions
  self.get_page.css("div.image-card")
end 




def self.make_exhibitions
  self.get_exhibitions.each do |exhibition|
    text = BrooklynMuseum::Exhibitions
    text.name = exhibition.css("div.image-card h2").text.strip
    text.dates = exhibitions.css("div.image-card h4").text.strip
    text.url = exhibition.css("h2 a").attr("href").value
  end 
  end
end 