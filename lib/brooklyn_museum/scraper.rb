require "pry"
require 'nokogiri'
require 'open-uri'

class BrooklynMuseum::Scraper

  def self.get_page
      Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))
  end 

  
  
  def self.get_exhibition_nodes
        page = get_page
        container = page.css("div.card-container")
        container.css("div.image-card").take(9)
  end 


  def self.node_to_exhibition(node)
        link = node.css("h2 a")
        name = link.text.strip
        url = link.attr("href")
        dates = node.css("h4").text.strip
    BrooklynMuseum::Exhibitions.new(name,dates,url)
  end 


  def self.get_exhibitions
        get_exhibition_nodes.map { |node| node_to_exhibition node}
  end 

end 