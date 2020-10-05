class CatFaxCLI::CLI

    def call
        puts "Welcome, friend of feline!"
        puts "To see catfax, enter 'meow'"
        puts "To exit catfax, enter 'exit"
        menu

    end

    def menu
        input = gets.strip.downcase

        if input == "meow"
            catfactz_list
            menu

        elsif input == "exit"
            goodbye

        else
            invalid_entry
        end



    end

    def catfactz_list
        puts "1. catfax 1"
        puts "2. catfax 2"
        puts "3. catfax 3"
        puts ""
        puts ""
        puts "Meow! Which catfax would you like details about:"
        input = gets.strip.downcase
        catfactz_selection(input)
    
    end

    def catfactz_selection(catfax)
        


    end


    def goodbye
        puts "Goodbye, friend of feline!"

    end



    def invalid_entry
        puts "Invalid entry, try again"
        menu

    end




end

