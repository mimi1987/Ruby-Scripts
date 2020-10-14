# Ask the user for the text input.
puts "Please enter a short text: "
text = gets.chomp
words = text.split(" ")

# Create the hash for where the words and freqencies are saved.
frequencies = Hash.new(0) # Give the values a default value of 0.

words.each do |word|
  frequencies[word] += 1
end

# Sort the hash by frequencies in descending order.
frequencies = frequencies.sort_by do |word, freq|
  freq
end

frequencies.reverse!

# Print out the words and frequencies.
frequencies.each do |word, freq|
  puts word + " " + freq.to_s
end
