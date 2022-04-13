require_relative 'card'

class Deck
  def initialize
    @cards = []

    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end

    2.times do
      @cards << Card.new(nil, nil, true)
    end
  end

  def shuffle
    @cards.shuffle!

    self
  end

  def random_card
    @cards.sample
  end

  def pop_a_card
    @cards.pop
  end
end
