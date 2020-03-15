class Exhibitions
  
  attr_accessor :name, :dates, :url
  
  @@exhibitions = []
   
   def initialize(name, date, url)
     @name = name 
     @date = dates 
     @url = url
     @@exhibitions << self 
  end 

def  self.all
  @@exhibitions
end 

 
end 