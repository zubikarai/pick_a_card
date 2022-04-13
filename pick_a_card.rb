puts "Hello"
values = %w[2 3 4 5 6 7 8 9 10 J Q K A]
suits = %w[Diamonds Hearts Clubs Spades]

cards = []
values.each do |value|
  suits.each do |suit|
    cards << "#{value}#{suit[0].downcase}"
  end
end

2.times do
  cards << '[Joker]'
end

cards.shuffle!

puts "How many cards do you pick?"
number = STDIN.gets.to_i

number.times do
  puts cards.pop
end
