class BrooklynMuseum::SCRAPER
      def scrape_exhibitions
        page = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))
        binding.pry
      end 
end 