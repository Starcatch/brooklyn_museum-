class BrooklynMuseum::EXHIBITIONS
  
  
  attr_accessor  :descriptions, :dates
   @@all = []
  
 
   
   def initialize(title)
     @@all = []
     @descriptions = descriptions
     @dates = dates 
     #title.descriptions << self
     save 
   end 
   
   def self.all
     #BrooklynMuseum::SCRAPER.scrape_exhibitions if @@all.empty?
     @@all
   end 
   
   def save 
     @@all << self 
   end 
   
   def get_descriptions
    BrooklynMuseum::Scraper.scrape_descriptions
   end
   
   def get_dates 
    BrooklynMuseum::Scraper.scrape_dates
   end 
   
  
end 