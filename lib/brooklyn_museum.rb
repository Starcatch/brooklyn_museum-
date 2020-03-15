#my environment 


require_relative "brooklyn_museum/version"
require_relative "brooklyn_museum/cli"
require_relative "brooklyn_museum/exhibitions"
require_relative "brooklyn_museum/scraper"


require "pry"
require "nokogiri"
require "open-uri"



module BrooklynMuseum
  class Error < StandardError; 
  # Your code goes here...
end
end 
