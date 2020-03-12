class BrooklynMuseum::CLI
  def call 
    puts "\nWelcome to Brooklyn Museum!\n"
     get_list_of_exhibits
     list_these_exhibit
     get_user_input
  end 
  
  def get_list_of_exhibits
     
    @names = BrooklynMuseum::EXHIBITIONS.all
   
  end 
  
  def list_these_exhibit
    puts "Choose an exhibit to see a description"
    @names.each.with_index(1) do |exhibit, index|
      puts "#{index}. #{exhibit.title}"
  end 
 end
  
  def get_user_input
    chosen_exhibit = gets.strip.to_i
    show_description_for(chosen_exhibit) if valid_input(chosen_exhibit, @names)
   end
   
   def valid_input(input, data)
    input <= data.length && input > 0
  end 
  
  def show_description_for(chosen_exhibit)
    exhibit = @names[chosen_exhibit-1]
    puts "Here is a few words about #{exhibit.title}"
   
  end 
  
end 
  
