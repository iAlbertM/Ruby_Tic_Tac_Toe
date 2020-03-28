#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative './tic_tac_toe.rb'

# Code your CLI Here
puts 'Welcome to Tic Tac Toe!'

board = ['X', 'O', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
display_board(board)
puts 'Where would you like to go?'
input = gets.strip
index = input_to_index(input)
turn(board, index)
display_board(board)

puts "end of round"
# turn(board)
# display_board(board)


# def turn_counter(board)
#   board.each do |element| 
#     if element == "X" || element == "O"
#       turns += 1
#     end
#   end
#   turns
# end

# p turn_counter(board)