class BrooklynMuseum::Exhibitions
  
  
  attr_accessor   :name, :dates, :url  #description
   
  @@all = []
  
 
   
   def initialize(name)
     @name = name
     @dates = dates 
     @url = url
     @@all << self
     #@descriptions = descriptions
   end 
   
   def self.all
   @@all
   end 
  
end 