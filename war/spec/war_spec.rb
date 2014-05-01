require 'rubygems'
require 'rspec'
require 'pry-debugger'
require_relative "../war.rb"

describe 'Card' do
  it 'creates a card with a rank, value, and suit' do
    card = Card.new(3, 3, 'heart')

    expect(card.rank).to eq(3)
    expect(card.value).to eq(3)
    expect(card.suit).to eq('heart')
  end
end

describe 'Deck' do
  it 'creates a 52 card deck' do
    deck = Deck.new
    deck.create_52_card_deck

    expect(@deck.length).to eq(51)
  end

  xit 'can shuffle a deck' do

  end

  xit 'can deal 26 cards to players' do

  end

end

# Shuffle the deck
# Deal out the cards to the players
# Play each hand until a player wins
# List who won the game
# The WarAPI takes care of the logic for each turn
