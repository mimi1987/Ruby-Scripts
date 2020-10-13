puts "Enter the text to search through: "
text = gets.chomp

puts "Enter the word to redact: "
redact = gets.chomp

# Split up the text into words
words = text.split(" ")

# Loop over each object and redact the text
words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end
