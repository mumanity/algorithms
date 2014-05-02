require 'rubygems'
require 'rspec'
require 'pry-debugger'
require_relative "../war.rb"

describe 'Card' do
  it "exists" do
    expect(Card).to be_a(Class)
  end

  it 'creates a card with a rank, value, and suit' do
    card = Card.new(3, 3, 'heart')

    expect(card.rank).to eq(3)
    expect(card.value).to eq(3)
    expect(card.suit).to eq('heart')
  end
end

describe 'Deck' do
  it "exists" do
    expect(Deck).to be_a(Class)
  end

  it 'creates a 52 card deck' do
    mine = Deck.new
    mine.create_52_card_deck

    expect(mine.deck.length).to eq(52)
  end

  it 'can shuffle a deck' do
    mine = Deck.new
    mine.create_52_card_deck
    
    yours = mine.shuffle

    expect(mine.deck.length).to eq(52)
    expect(yours).to_not eq(mine)
  end
end

describe 'Player' do
  it "exists" do
    expect(Player).to be_a(Class)
  end
end

describe 'War' do
  it "exists" do
    expect(War).to be_a(Class)
  end

  describe '.initialize' do
    it 'can deal 26 cards to players' do
      game = War.new('player1', 'player2')

      expect(game.player1.hand.deck.length).to eq(26)
      expect(game.player2.hand.deck.length).to eq(26)
    end
  end

describe 'WarAPI' do
  it "exists" do
    expect(WarAPI).to be_a(Class)
  end

  xit "let's me win" do
    
  end
end

end

# Deal out the cards to the players
# Play each hand until a player wins
# List who won the game
# The WarAPI takes care of the logic for each turn
