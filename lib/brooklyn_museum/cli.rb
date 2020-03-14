class BrooklynMuseum::Cli
  
  def call 
    puts "\n---Hello and Welcome to Brooklyn Museum!---\n"
   
    @input = ""
    until @input == "exit!"
    list_exhibitions
    show_details
    whats_next
  
 end
  goodbye
  end 
  
  def  get_exhibitions
    @exhibitions = BrooklynMuseum::Exhibitions
  end 
  
 end list_exhibitions
 puts "Here is the name of the chosen exhibition:"
 

def show_details(selection)
  
  if selection <= BrooklynMuseum::Exhibitions.all.length && selection> 0
    obj = BrooklynMuseum::Exhibitions.all[selection.to_i - 1]

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

