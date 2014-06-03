
#Card to represent an individual playing card. This class should contain the suit and
#the value and provide methods for determining what type of card it is (e.g. face card or ace).
class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{@value}#{@suit}"
  end

  def score
    if @value.is_a?(String) && @value == 'a'
      11
    elsif @value.is_a?(String)
      10
    else
      @value
    end
  end
end

#Deck to represent a collection of 52 cards.
#When dealing a hand this class can be used to supply the Card objects
class Deck
  attr_reader :deck
  def initialize
    @values = [2,3,4,5,6,7,8,9,10,'j','k','q','a']
    @suits = ['♠','♦','♥','♣']
    @deck = []
    @values.each do |value|
      @suits.each do |suit|
        card = Card.new(value,suit)
        @deck << card
      end
    end
  end

  def deal
    @deck.pop
  end
end

#Hand to represent the player's and dealer's hand.
#This class will need to determine the best score based on the cards that have been dealt.
class Hand

end

