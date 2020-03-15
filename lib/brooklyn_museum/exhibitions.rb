class BrooklynMuseum::Exhibitions
  
  attr_accessor :name, :dates, :url
  
  @@exhibitions = []
   
   def initialize(name, dates, url)
     @name = name 
     @dates = dates 
     @url = url
     @@exhibitions << self 
  end 

def  self.all
  @@exhibitions
end 

 
end 