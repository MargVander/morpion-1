require 'colorize'

=begin
- Le jeu ne se joue qu'à deux joueurs (on ne vous demande pas de coder d'intelligence artificielle aujourd'hui…);
- Le programme doit commencer en demandant le prénom de chaque joueur ;
- Le plateau de jeu est composé de 9 cases, chacune désignée par sa position verticale (A, B ou C) suivie de sa position horizontale (1, 2 ou 3). Exemples : la case en haut à droite s'appelle "A3" et celle en bas à droite "C3" ;
- Au début de chaque tour de jeu, le programme affiche dans le terminal le plateau de jeu. Puis il demande au joueur dont c'est le tour où il souhaite jouer ;
- Les joueurs jouent à tour de rôle jusqu'à que l'un d'eux gagne ou que le plateau de jeu soit rempli ;
- Le programme doit détecter la fin de la partie. Si un joueur gagne, il doit annoncer son nom. S'il y a match nul, le programme doit en informer les deux joueurs ;
- Un effort sera à faire sur l'affichage du jeu dans le terminal (par ex : board affiché de façon stylée, compteur de parties, couleurs, etc.).
=end

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :value, :case_number 
  
  def initialize (case_number)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
      @value = value
      @case_number = case_number
  end
end



class Router
    attr_accessor :valeur :case
  
  def initialize
    def get_names
      puts "Player X name: ".blue
      name1 = gets.chomp
      puts "Player O name: ".red
      name2 = gets.chomp
      [name1, name2]
    end
    
    def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
      puts ""
      puts "BONJOUR ET BIENVENUE SUR LE FABULEUX JEUX DU MORPION".yellow
      while true
  
      puts ""
      puts "Dude, what do you want ? you want play with a fabulous morpion game ?".green
      sleep(2)
      
      puts "Player X name: ".blue
      name1 = gets.chomp
      puts "Player O name: ".red
      name2 = gets.chomp
      [name1, name2]
    end
  
      case params 
      when 1
        puts "Nouvelle partie ?".green
        puts ""
        @controller.create_gossip
      when 2
        puts "À bientôt !"
        puts ""
        break
      else
        puts "Ce choix n'existe pas, merci de ressayer"
      end
  end
  end
  end
    #TO DO : doit régler sa valeur, ainsi que son numéro de cases
  

  

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.


  def initialize
    @cells = [BoardCase.new,BoardCase.new,BoardCase.new,BoardCase.new,BoardCase.new,BoardCase.new,BoardCase.new,BoardCase.new,BoardCase.new]
  end
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

A1, A2, A3
B1, B2, B3
C1, C2, C3
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end



class Player
  attr_accessor :valeur :name

  
  def initialize
    #TO DO : doit régler son nom et sa valeur
  end



class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player :status
  truc_array = [player1, player2]
  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end



class Show

  def show_board(board)
    @view = View.new
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end
puts
puts
puts
end



class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 

  end

end


Application.new.perform
Router.new.perform