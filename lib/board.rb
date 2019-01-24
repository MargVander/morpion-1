class Board
    include Enumerable
    #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_accessor :board
  
    def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
      @board =  [*1..9].map { |i|  BoardCase.new(i).case_number }
    end

    def to_s
        #TO DO : afficher le plateau
        puts "\n Here is the board for playing Tic Tac Toe Game with the following rule : each number corresponds to a box index"
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end 

    def play(value)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        case_number = gets.chomp().to_i
        case_number = case_number -1
        @board.each_index { |e|
        e == case_number && @board[e] != 'X' && @board[e] != 'O' ? @board[e] = value : @board[e] }
    end

    def draw?
        if @board.all? { |e| e == "X" || e == "O" } 
            return true
        else 
          return false
        end
    end

    def victory?
        #TO DO : qui gagne ?
        if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
          return true
        else
          return false
        end
    end
end 