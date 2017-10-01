def display_board(board)
  board = " ", " ", " ", " ", " ", " ", " ", " ", " "
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
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
