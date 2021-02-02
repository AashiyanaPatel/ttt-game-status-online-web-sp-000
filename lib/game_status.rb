# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
   [0,1,2],
   [3,4,5],
   [6,7,8],
   [0,3,6],
   [1,4,7],
   [2,5,8],
   [0,4,8],
   [6,4,2],
]
def input_to_index(input)
  x = input_to_i - 1
end

def move(board, index, token)
  board[index] = token
end

def position_taken?(board, index)
  board[index] != " "
end

def valid_move?(board, index)
  index.between?(0,8)  && !position_taken?(board, index)
end

board.count do
  cell != ""
  end
end

def current_player(board)
  if turn_count(board).odd?
    "O"
  else
    "X"
  end
end

def won?(board)
  winning_combo = nil
  
  WIN_COMBINATIONS.each do |combo|
  
  position_1 = combo[0]
  position_2 = combo[1]
  position_3 = combo[2]

  if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
    
    winning_combo = combo
    
  elsif board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
   winning_combo = combo
  
  end
end

  winning_combo
end