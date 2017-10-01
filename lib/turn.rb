def display_board(board)
  board = " ", " ", " ", " ", " ", " ", " ", " ", " "
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif !position_taken?(board, index) && index.between?(0, 8)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == "   " || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, value = "X")
