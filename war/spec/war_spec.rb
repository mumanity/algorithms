require 'rubygems'
require 'rspec'
require 'pry-debugger'
require_relative '../war.rb'

# shuffle deck
# deal cards to players
# play hand (loop) until winner
# announce winner
# war api takes over


# GAME PLAY
# deck is shuffled
# 2 players dealt 26 cards *blind
# rotating turns
# on turn both players see top card
# player with higher card wins round
# both cards go to bottom of winner's deck
# if value == value initiate WAR!
# both players play 3 cards each *blind
# both players play a 4th card face up
# player with higher card wins round
# winning player takes 10 cards to bottom of their deck


# calc winner < deck

values = [14, 13, 12, 10, 9, 8, 7, 6, 5, 4, 3, 2]
rank = ['A' = 14], ['K' = 13], ['Q' = 12], ['J' = 11], 10, 9, 8, 7, 6, 5, 4, 3, 2]
suit = ['hearts', 'diamonds', 'clubs', 'spades']
