movies = {
  terminator: 5,
  skyfall: 4,
  rambo_1: 4
}

puts "To add a new movie type 'add'"
puts "To update a movie type 'update'"
puts "To show the movies type 'display'"
puts "To delete a movie type 'delete'"

choice = gets.chomp.downcase

case choice
  when "add"
    print "Please type the title of the movie: "
    title = gets.chomp
    if movies[title.to_sym].nil?
     print "Please enter your rating for the movie: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "You added #{title} with the rating of #{rating} to your movies."
      else
        puts "Your movie is already in your list."
      end
  when "update"
    print "Please type the title of the movie: "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "The title isn't in the list at the moment."
    else
      puts "Plese enter your rating for the movie: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "You have updated #{title} with the new rating of #{rating}"
    end
  when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  when "delete"
    print "Please type the title of the movie: "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "The movie isn't in the list at the moment."
    else
      movies.delete(title.to_sym)
      puts "The movie #{title} was successfully deleted!"
    end
  else
    puts "ERROR! Please enter a valid operation like add, update, display or delete!"
end
