class Board
    include Enumerable
    #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_accessor :board

    def initialize
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
      @board =  [*1..9].map { |i|  BoardCase.new(i).case_number }
    end
    # map sert à découper en 9 cases correspondantes a l'array

    def to_s
        # afficher le plateau
        puts "\n Dingue, regarde cette fabuleuse matrice morpion youhououuuuou\n".colorize(:green)
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end 

    def play(value)
    #une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        case_number = gets.chomp().to_i
        case_number = case_number -1
        # le -1 signifie qu'une case est déjà occupé par un x ou un o
        @board.each_index { |e|
        e == case_number && @board[e] != 'x' && @board[e] != 'o' ? @board[e] = value : @board[e] }
    end

    def draw?
        # cette def sert à savoir si une board est déja completé, si vide elle accepte sinon "false" la boucle recommance
        if @board.all? { |e| e == "x" || e == "o" } 
            return true
        else 
          return false
        end
    end

    def victory?
        #qui gagne ? cette def sert à conaitre toutes les combinaisons gagantes 
        if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
          return true
        else
          return false
        end
    end
end 