

class BrooklynMuseum::Cli
  
  def call
  BrooklynMuseum::Scraper.get_exhibitions
    welcome
    list_exhibitions
    pick_exhibition
    goodbye
  end 
  
  
  def welcome
    puts "---Welcome to Brooklyn Museum!---"
    puts "Here is the list of our current exhibitions"
    puts ""
  end 
  
  def list_exhibitions
    @exhibitions = BrooklynMuseum::Exhibitions.all
    @exhibitions.each.with_index(1) do |exhibition, index|
      puts "#{index}. #{exhibition.name} " #name of exhibition
    end 
  end 
  
  def pick_exhibition
    input =""
    while input != "exit"
    puts ""
    puts "Enter the number of the exhibition you would like to see more infor on, type 'list' the list of current ehibitions again."
    input=gets.strip.downcase
    
    if input == "list"
      list_exhibitions
    elsif  input.to_i > 0
      selection = @exhibitions[input.to_i-1]
      puts ""
      puts "------#{selection.name}------"
      puts ""
      puts "Here are the exhibition dates: #{selection.dates}"
      puts ""
      puts "To find out more about this exhibition, please follow the link:"
      puts "link : #{selection.url}"
      puts ""
    else "bad chose"
   end #of elsif
  end #of if
 end #of pick_exhibition
  
  def goodbye
    puts "Thank you for visiting our museum!"
    puts "EARTH with out ART, is just EH!"
  end #of goodbye
 
end #end of class

 