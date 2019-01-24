class BoardCase
      #la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :value, :case_number 
      #attr_accessor, sert à choisir deux instance importante, la val
    
    def initialize (case_number)
      #doit régler sa valeur, ainsi que son numéro de case
        @value = value
        @case_number = case_number
    end
    
      #modifier? 
    def to_s
      #doit renvoyer la valeur au format string (en phrase)
       return @value.to_s
    end
end



=begin
  game => Boardcase & board
      => Player
=end