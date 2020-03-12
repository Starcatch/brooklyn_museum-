class BrooklynMuseum::EXHIBITIONS
  @@all = []
  
  attr_accessor :title 
  
  def self.all
    @@all
    save 
  end 
   
   def initialize(title)
     @title = title 
   end 
   
   def self.all
     @@all
   end 
   
   def save 
     @@all << self 
   end 
   
  
end 