class BrooklynMuseum::SCRAPER
      def self.scrape_exhibitions
        page = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))
        
        names = page.css("div.image-card h2")
        names.each do |exhibit|
        title = exhibit.text
        BrooklynMuseum::EXHIBITIONS.new(title)
      end 
    end 
    
    def scrape_descriptions
      
    end 
    
    def scrape_dates
    end 
end 