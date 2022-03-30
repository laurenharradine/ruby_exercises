movies = {
  Spaceballs: 4
}

quit = false
puts "Welcome to Loz's Movie Hash Experiment!"

while !quit
    puts "Please type your choice from the following:"
    puts "<add> <update> <display> <delete> <quit>"
    choice = gets.chomp

    case choice
        when "add"
            puts "Enter movie title:"
            title = gets.chomp
            if movies[title.to_sym] == nil
                puts "Enter movie rating:"
                rating = gets.chomp
                movies[title.to_sym] = rating.to_i
            else
                puts "Movie has already been added!"
            end

        when "update"
            puts "Enter movie title:"
            title = gets.chomp
            if movies[title.to_sym] == nil
                puts "Movie is not in list!"
            else
                puts "Enter new movie rating:"
                rating = gets.chomp.to_i
                movies[title.to_sym] = rating
            end   

        when "display"
            movies.each { |title, rating| puts "#{title}: #{rating}" }

        when "delete"
            puts "Enter movie title:"
            title = gets.chomp
            if movies[title.to_sym] == nil
                puts "Movie is not in list!"
            else
                movies.delete(title.to_sym)
                puts "#{title} has been deleted."
            end  

        when "quit"
            quit = true
            puts "Kthxbai!"

        else
            puts "Sorry, that doesn't make sense. Please try again!"
    end
end