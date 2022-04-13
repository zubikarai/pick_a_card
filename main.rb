require_relative 'lib/deck'

puts "Hello"

deck = Deck.new.shuffle

puts "How many cards do you pick?"
number = STDIN.gets.to_i

puts
number.times do
  puts deck.pop_a_card
end
