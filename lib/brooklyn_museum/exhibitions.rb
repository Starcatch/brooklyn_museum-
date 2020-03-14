class BrooklynMuseum::Exhibitions
  
  attr_accessor :name, :dates, :url
  
  @@exhibitions = []
   
   def initialize(name=nil, date= nil, url =nil)
     @name = name 
     @date = dates 
     @url = url
     @@exhibitions << self 
  end 

def  self.all
  @@exhibitions
end 

 
end 