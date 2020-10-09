class CLI

    def call
        puts "Welcome to PlanetFax, stargazer!"
        puts "To see planets, enter 'planetz'"
        puts "To exit PlanetFax, enter 'exit'"
        API.get_data
        menu

    end
    
    def prompt
        puts "To see planets, enter 'planetz'"
        puts "To exit PlanetFax, enter 'exit'"
      
    end



    def menu
        input = gets.strip.downcase

        if input == "planetz"
            planets_list
            puts ""
            prompt
            puts""
            menu
            puts""

        elsif input == "exit"
            goodbye
            puts ""

        else
            invalid_entry
            puts""
            prompt
            puts""
            menu
            puts""

        end
    end

    def planets_list
        PlanetFax.all.each_with_index do |planetz, index|
           puts "#{index + 1}. #{planetz.name}"
        end
        puts ""
        puts ""
        puts ""
        puts "Enter the name of the planet you would you like details about:"
        input = gets.strip.downcase
        planets_selection(input)
    
    end

    def planets_selection(planet)
         fact = PlanetFax.find_by_name(planet)
         fact.each do |f|
            puts " Name: #{f.name}"
            puts " Climate: #{f.climate}"
            puts " Terrain: #{f.terrain}"
            puts " Population: #{f.population}"

        end
    end

    def goodbye
        puts "Goodbye, stargazer!"
        puts""
    end

    def invalid_entry
        puts "Invalid entry, try again"
        puts""
        menu
        puts""
    end
end

