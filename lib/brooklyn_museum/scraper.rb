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
    
    
   # def self.scrape_for_description(exhibitions)
     # url = "ttps://www.brooklynmuseum.org/exhibitions/#{exhibitions.ref}"
     # doc = Nokogiri::HTML(open(url))
      
      #description = doc.css("div.exhibition-description")
      #description.each do |d|
       # title = e.css("p").text.strip
       # url = e.css("a").attr("href").value
       # EdenEvents::Event.new(title, month, url)
      #end 
    
    
end 