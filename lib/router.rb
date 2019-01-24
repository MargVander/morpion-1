require 'controller'

class Router

  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts ""
    puts "BIENVENUE DANS THE GOSSIP PROJECT".blue
    while true

      #on affiche le menu
      puts ""
      puts "Tu veux faire quoi BG ?"
      puts ""
      puts "1. Je veux créer un gossip"
      puts "2. Afficher tous les gossips"
      puts "3. Supprimer un gossip"
      puts "4. Je veux quitter l'app"
      print "> ".green
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      puts ""
      puts `clear`

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de créer un gossip" 
        puts ""
        @controller.create_gossip
      when 2
        puts "Voici la liste entière de tous les ragots."
        puts ""
        @controller.index_gossips
      when 3
        puts "Quel potin tu veux supprimer ?"
        puts ""
        @controller.delete_gossip
      when 4
        puts "À bientôt !"
        puts ""
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "Ce choix n'existe pas, merci de ressayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end