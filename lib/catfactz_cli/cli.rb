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
            puts "Meow there, what you would like to know?"

        elsif input == "exit"
            puts "bye bye meow"

        else
            invalid_entry
        end



    end

    def catfactz_list
        

    end


    def invalid_entry
        puts "Invalid entry, try again"
        menu

    end




end

