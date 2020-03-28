# Helper Methods
def display_board(b)
	puts " #{b[0]} | #{b[1]} | #{b[2]} "
	puts '-----------'
	puts " #{b[3]} | #{b[4]} | #{b[5]} "
  	puts '-----------'
  	puts " #{b[6]} | #{b[7]} | #{b[8]} "
end


def input_to_index(input)
 	input.to_i - 1
end


# check if position exists and is available
def position_taken?(board, index)
	if board[index] == "X" || board[index] == "O"
		return true
	elsif !(board[index] == "" || board[index] == " " || board[index] == nil)
		return false
	end 
end

def valid_move?(board, index)
	if index.between?(0, 8) && position_taken?(board, index) == false
		return true
	else
		return false
	end
end


def move(board, position, player)
	if valid_move?(board, position) == true
		board[position] = player
	end
	puts "position: #{position}\nPlayer: #{player}"
	player
end


# ____________________
#
# TRACKING: 
# PLAYER'S TURN COUNT
# && CURRENT_PLAYER
# ____________________
# determine who's turn it is
def turn_count(board)
	turns = 9
	board.each do |element| 
		if element == "X" || element == "O"
    		turns -= 1
    	end
	end
	turns
end


# ____________________
#
# CURRENT_PLAYER(BOARD)
# ____________________


def current_player(board)
	player_is = nil	
	if turn_count(board) % 2 == 0
		player_is = "O"
	else
		player_is = "X"
	end
	player_is
end


# ____________________
#
# TURN(BOARD)
# ____________________

def turn(board, index)
	if valid_move?(board, index) == true
		c_player = current_player(board)
	    move(board, index, c_player)
	end
	until valid_move?(board, index) == true
		puts "Please enter 1-9:"
  		input = gets.strip
		index = input_to_index(input)
		move(board, index, c_player)	  
	  end
	  display_board(board)
end
