require "./deck.rb"
require "./card.rb"


trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

score = 0
incorrect_answers = []

puts "Welcome to the trivia game! Here is your first question:"

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
    score += 1
  else
    puts "Incorrect! Try again."
    puts card.question
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      puts "Nice work!"
      score += 1
    else
      puts "Incorrect!"
      incorrect_answers << card
    end
  end
end

  puts "Your final score is: " + score.to_s + " out of a possible total of 3."

if incorrect_answers.length > 0
  puts "Lets take another look at the questions you got wrong."
end

while incorrect_answers.length > 0
  card = incorrect_answers.shift
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
    score += 1
  else 
    puts "Incorrect! You have one more chance to get this right!"
    puts card.question
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      puts "Now you've got it! Well done."
      score += 1
    else 
      puts "Incorrect."
    end
  end
end

puts "Your final score after re-do's is: " + score.to_s + " out of a possible total of 3."

