class Player
    #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
    attr_accessor :name, :value
    attr_writer :status

    def initialize(value)
      #TO DO : doit régler son nom, sa valeur, son état de victoire
        @name = gets.chomp
        puts ">Welcome #{@name.capitalize}!".colorize(:magenta)
        @value = value
    end
end 
  