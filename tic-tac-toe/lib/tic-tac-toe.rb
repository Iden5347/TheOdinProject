class Board
  def initialize
    @board = Array.new(3) {Array.new(3, "0")}
    @whoseup = "x"
    @winner = nil
    while @winner == nil
      print_board()
      make_move()
    end
    puts "winner is #{@winner}"
  end
  puts @board
  def print_board
    @board.each do |row|
      row.each {|value| print "#{value}"}
      puts 
    end
  end
  def make_move
    location = 0
    while location <= 0 or @board.dig((location - 1) / 3, (location - 1) % 3) != "0"
      print "make move: "
      location = gets.to_i
    end
    @board[(location - 1) / 3][(location - 1) % 3] = @whoseup
    if @whoseup == "x"
      @whoseup = "o"
    else
      @whoseup = "x"
    end
    find_winner()
  end
  def find_winner()
    for i in 0..2
      if @board[0][i] == @board[1][i] and @board[1][i] == @board[2][i] and @board[0][i] != "0"
        @winner = @board[0][i]
      end
      if @board[i][0] == @board[i][1] and @board[i][1] == @board[i][2] and @board[i][0] != "0"
        @winner = @board[i][0]
      end
    end
    if (@board[0][0] == @board[1][1] and @board[1][1] == @board[2][2]) or
      (@board[2][0] == @board[1][1] and @board[1][1] == @board[0][2]) and @board[1][1] != "0"
      @winner = @board[1][1]
    end
    full = true
    @board.each do|row|
      row.each do |item|
        if item == "0"
          full = false
        end
      end
    end
    if @winner == nil and full
      @winner = "nobody"
    end
  end
end

game = Board.new()