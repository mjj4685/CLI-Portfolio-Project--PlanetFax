class CLI

    def call
        puts "Welcome, friend of feline!"
        puts "To see catfax, enter 'meow'"
        puts "To exit catfax, enter 'exit"
        API.get_data
        menu

    end

    def menu
        input = gets.strip.downcase

        if input == "meow"
            planets_list
            menu

        elsif input == "exit"
            goodbye

        else
            invalid_entry
        end



    end

    def planets_list
        PlanetFax.all.each_with_index do |planetz, index|
           puts "#{index + 1}. #{planetz.name}"
        end
        puts ""
        puts ""
        puts "Meow! Which catfax would you like details about:"
        input = gets.strip.downcase
        planets_selection(input)
    
    end

    # attr_accessor :name, :climate, :terrain, :population

    def planets_selection(catfax)
         fact = PlanetFax.find_by_name(catfax)
         fact.each do |f|
            puts " Text: #{f.text}"
            puts " Type: #{f.type}"
            puts " User: #{f.user}"
        end

    end


    def goodbye
        puts "Goodbye, friend of feline!"

    end



    def invalid_entry
        puts "Invalid entry, try again"
        menu

    end




end

