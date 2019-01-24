#controleur / controleur
class Game
    def initialize
      #TO DO : créé 2 joueurs, créé un board
      puts "\n Welcome to the Tic-Tac-Toe Game!".colorize(:magenta)
      @board = Board.new 
      puts "\n>Player 1 : What's your name?".colorize(:magenta)
      @player1 = Player.new("X")
      puts "\n>Player 2 : What's your name?".colorize(:magenta)
      @player2 = Player.new("O")
    end
 
    def go
    # TO DO : lance la partie
        while @board.victory? == false && @board.draw? == false
        self.turn
        end
   end

    def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    ObjectSpace.each_object(Player) do |obj|
    @board.to_s
    puts ""
        if @board.draw? == true
            @board.to_s
            puts ""
            puts "it s a draw, end of the game.\n A new game will automatically start. Press Ctrl+C to quit.".colorize(:yellow)
            # break
            @new_round = Game.new.go 
        end
    puts ">Now, #{obj.name} you need to play a number between 1 and 9 for replacing the box index by the symbol #{obj.value} ".colorize(:light_blue)
    @board.play(obj.value)
            if @board.victory? == true
        @board.to_s
        puts ""
        puts ">Congratulations #{obj.name}, YOU WIN! End of the game.\nA new game will automatically start. Press Ctrl+C to quit. ".colorize(:green)
            # break
            @new_round = Game.new.go 
            end
    end 
end 
end 
Game.new.go