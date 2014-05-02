# This class is complete. You do not need to alter this
class Card
  attr_accessor :rank, :value, :suit
  # Rank is the rank of the card, 2-10, J, Q, K, A
  # Value is the numeric value of the card, so J = 11, A = 14
  # Suit is the suit of the card, Spades, Diamonds, Clubs or Hearts

  def initialize(rank, value, suit)
    @rank = rank
    @value = value
    @suit = suit
  end
end

# TODO: You will need to complete the methods in this class
class Deck
  attr_accessor :deck
  def initialize
    @deck = []
  end

  # Given a card, insert it on the bottom your deck
  def add_card(card)
    @deck.unshift(card)
  end

  # Mix around the order of the cards in your deck
  def shuffle # You can't use .shuffle!
    size = @deck.length
    (size * 2).times do
      x = rand(size)
      y = rand(size)
      @deck[x], @deck[y] = @deck[y], @deck[x]
    end
    @deck
  end

#!!!!! Remove the top card from your deck and return it
  def deal_card
    @deck.pop
  end

  # Reset this deck with 52 cards
  def create_52_card_deck
    suits = ['hearts', 'clubs', 'diamonds', 'spades']
    value = [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2]
    for y in suits
      for x in value
        @deck << Card.new(x, x, y)
      end
    end
    @deck
  end
end

# IN CLASS ANSWER
  # def create_52_card_deck
  #   value = (2.14).to_a
  #   ['hearts', 'clubs', 'diamonds', 'spades'].each do |suit|
  #     (2..10).to_a + ['J','Q','K','A'].each do |rank|
  #       @deck << Card.new(rank, value, suit)
  #     end
  #   end
  #   @deck
  # end

# You may or may not need to alter this class
class Player
  def initialize(name)
    @name = name
    @hand = Deck.new
  end
end


class War
  def initialize(player1, player2)
    @deck = Deck.new
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    # You will need to shuffle and pass out the cards to each player
  end

  # You will need to play the entire game in this method using the WarAPI
  def play_game
    # WarAPI.play_turn()
  end
end


class WarAPI
  # This method will take a card from each player and
  # return a hash with the cards that each player should receive
  def self.play_turn(player1, card1, player2, card2)
    if card1.value > card2.value
      {player1 => [card1, card2], player2 => []}
    elsif card2.value > card1.value || Rand(100).even?
      {player1 => [], player2 => [card2, card1]}
    else
      {player1 => [card1, card2], player2 => []}
    end
  end
end


# create_52_card_deck WORKS IRB
#
# deck = []

#   suits = ['hearts', 'clubs', 'diamonds', 'spades']
#   value = [14, 13, 12, 10, 9, 8, 7, 6, 5, 4, 3, 2]
#     for y in suits
#       for x in value
#         deck << [x, x, y]
#       end
#     end
