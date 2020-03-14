class BrooklynMuseum::Exhibitions
  
  
  attr_accessor   :name, :dates, :url  #description
   
  @@all = []
  
 
   
   def initialize(name, dates, url)
     @name = name
     @dates = dates 
     @url = url
     save
     
   end 
   
   def self.all
     BrooklynMuseum::Scraper.scrape_exhibitions if @@all.empty?
     
   @@all
   end 
    
    def save
    @@all << self
  end
  
end 