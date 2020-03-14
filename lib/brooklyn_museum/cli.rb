class BrooklynMuseum::Cli
  
  def call
    list_exhibitions
    menu
    goodbye
  end 

  def list_exhibitions
    puts "Welcome to Brooklyn Museum:"
    @exhibitions = BrooklynMuseum::Exhibitions.method
    @exhibitions.each.with_index(1) do |exhibit, index|
      puts "#{index}. #{exhibit.name} - #{exhibit.dates} - #{exhibit.url} "
  end 
end 
  
  def menu 
    input = nil
    while input != "exit"
      puts "Enter the number of the exhibition you'd like more info on or type "


      input = gets.strip.downcase

    if input.to_i > 0 
      the_exhibit = @exhibitions[input.to_i-1]
      puts "#{index}. #{exhibit.name} - #{exhibit.dates} - #{exhibit.url} "
    elsif input == "list"
      list_exhibitions
    end 
    end
  end 
end 

 