class BrooklynMuseum::Exhibitions
  
  attr_accessor :name, :dates, :url

  def self.method
     self.scrape_museum
  end 

  def self.scrape_museum
     exhibits =[]
     exhibits << self.scrape_brooklyn
  end 


  def self.scrape_brooklyn

    doc = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))


    exhibition = self.new
    name = doc.css("h2").text.strip
    dates = doc.css("h4").text.strip
    url =  doc.css("h2 a").attr("href").value
    exhibition

  end
end 