class BrooklynMuseum::EXHIBITIONS
  @@all = []
  
  attr_accessor :title 
  
 
   
   def initialize(title)
     @title = title
     save 
   end 
   
   def self.all
     BrooklynMuseum::SCRAPER.scrape_exhibitions if @@all.empty?
     @@all
   end 
   
   def save 
     @@all << self 
   end 
   
  
end 