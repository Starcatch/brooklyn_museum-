class BrooklynMuseum::SCRAPER
      def self.scrape_exhibitions
        page = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))
        
        exhibits = page.css("div.image-card h2")
        exhibits.each do |exhibit|
        title = exhibit.text
        BrooklynMuseum::EXHIBITIONS.new(title)
        
      end 
    end 
end 