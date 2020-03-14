class BrooklynMuseum::Scraper


def self.scrape_brooklyn

    doc = Nokogiri::HTML(open("https://www.brooklynmuseum.org/exhibitions"))


    exhibition = self.new
    name = doc.css("h2").text.strip
    dates = doc.css("h4").text.strip
    url =  doc.css("h2 a").attr("href").value
    exhibition

  end