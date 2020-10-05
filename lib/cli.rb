class CLI

    def call
        puts "Welcome, stargazer!"
        puts "To see planetfax, enter 'planetz'"
        puts "To exit planetfax, enter 'exit'"
        API.get_data
        menu

    end

    def menu
        input = gets.strip.downcase

        if input == "planetz"
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
        puts "Which planet would you like details about:"
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

            # attr_accessor :name, :climate, :terrain, :population
        end

    end


    def goodbye
        puts "Goodbye, stargazer!"

    end



    def invalid_entry

        puts "Invalid entry, try again"
        menu

    end




end

