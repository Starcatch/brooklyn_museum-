class BrooklynMuseum::Exhibitions
  
  attr_accessor :name, :dates, :url
  
  @@exhibitions = []
   
   def initialize 
     @@exhibitions << self 
  end 

def  self.all
  @@exhibitions
end 

 
end 