class Deck
  attr_reader :cards

  def initialize(data)
    @cards = []
    data.each do |question, answer|
      @cards << Card.new(question, answer)
    end
  end

  def draw_card
    cards.shift
  end

  def remaining_cards
    cards.length
  end

end

 


