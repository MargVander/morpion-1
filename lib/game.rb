#controleur / controleur
class Game
    def initialize
      #créé 2 joueurs, créé un board
      puts "\n BOUMMMM BIENVENUE SUR NOTE JEU MORPION!".colorize(:yellow)
      @board = Board.new 
      #création d'une nouvelle partie
      puts "\n>Player 1 : c'est quoi ton petit nom?".colorize(:magenta)
      @player1 = Player.new("x") 
      #défini les joueurs, le symbole est déjà assigné au joueurs.       
      puts "\n>Player 2 : c'est quoi ton petit nom?".colorize(:magenta)
      @player2 = Player.new("o")
      puts "\n Bien joué, donc Player1 (je sais j'ai pas réussi à mettre ton nom, hésite pas à me donner l'infos ;)), tu aura le X, et donc Player2, tu auras le o !! ok bitch??".colorize(:green)
    end
 
    def go
    #lance la partie / tant que les methodes victory et draw sont false, le jeu continue.
        while @board.victory? == false && @board.draw? == false
        self.turn 
        #le self sert à reprendre les methodes en boucle
        end
   end

    def turn
    #affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    ObjectSpace.each_object(Player) do |obj| 
    @board.to_s 
    #change en chaine de caractères
    puts ""
        if @board.draw? == true
            @board.to_s
            puts ""
            puts "it s a draw, end of the game.\n A new game will automatically start. Press Ctrl+C to quit.".colorize(:yellow)
            # break
            @new_round = Game.new.go 
        end
    puts ">Now, #{obj.name} tu choisis un putainde chiffre en 1 et 9, attention si tu te trompe #{obj.value} ".colorize(:light_blue)
    # Si def/draw est true donc fn de partie. (relance +action pour arret), relance un nouveau jeu en reutilisant Game. obj choisi le joueur correspondant et sa case

    @board.play(obj.value)
            if @board.victory? == true
        @board.to_s
        puts ""
        puts "Congratulations #{obj.name}, YOU WIN Bitch! Fin du jeu. Un nouveau jeu recommence. \n Press Ctrl+C pour quitter, t'as compris ??.\n ".colorize(:green)
        # break
            @new_round = Game.new.go 
            end
            # Si l'un des joueurs gagne, la partie se termine et le jeu se relance (à moins d'un petit cntrl+c des familles)
            end 
end 
end 
Game.new.go