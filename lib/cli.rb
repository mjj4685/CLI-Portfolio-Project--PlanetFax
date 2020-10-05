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
            catfactz_list
            menu

        elsif input == "exit"
            goodbye

        else
            invalid_entry
        end



    end

    def catfactz_list
        Catfactz.all.each_with_index do |factz, index|
           puts "#{index + 1}. #{factz.name}"
        end
        puts ""
        puts ""
        puts "Meow! Which catfax would you like details about:"
        input = gets.strip.downcase
        catfactz_selection(input)
    
    end

    # :text, :type, :user

    def catfactz_selection(catfax)
         fact = Catfactz.find_by_name(catfax)
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

