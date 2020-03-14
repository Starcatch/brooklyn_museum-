class BrooklynMuseum::Cli
  
  def call 
    puts "\n---Hello and Welcome to Brooklyn Museum!---\n"
   
    @input = ""
    until @input == "exit!"
    BrooklynMuseum::Scraper.new.self.scrape_exhibitions
    list_exhibitions
    show_details
    whats_next
  
 end
  goodbye
  end 
  
  def list_exhibitions #gets list of Exnibitions as numbered list 
     BrooklynMuseum::Exhibitions.all.each.with_index(1) do |exhibition, index|
       puts "#{index}. #{exhibition.title}"
  end 
 end 
 

def show_details(input)
  if input.to_i <= BrooklynMuseum::Exhibitions.all.length && input.to_i > 0
    obj = BrooklynMuseum::Exhibitions.all[input.to_i - 1]

    puts "Here is the name of the chosen exhibition: #{obj.name} !"
    puts "Here are the dates for your exhibition: #{obj.dates}!"
    puts "For more information follow the website: #{obj.url}"
    #puts obj.info #description
  else 
    puts "Please enter a valid key"
  end 
end 
  
  def  goodbye 
   puts "Thank you for visiting Brooklyn!" 
  end 
 
 
end 

