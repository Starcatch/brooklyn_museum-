class BrooklynMuseum::Scraper
      def self.scrape_exhibitions
        page = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))
        
        exhibitions = page.css("div.image-card")
        exhibitions.each do |e|
        name = n.css("h2").text.strip
        dates = d.css("h4").text.strip
        url = u.css("h2 a").attr("href").value
        BrooklynMuseum::Exhibitions.new(name,dates,url)

      end 
    end 
    
    #def scrape_descriptions
      
      #BrooklynMuseum::Exhibitions.new(descriptions)
      
    #end 
    
    #def scrape_dates
      #scrape here 
      #BrooklynMuseum::Exhibitions.new(dates)
    #end 

    #def scrape_url
    #end 
end 