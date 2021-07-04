
class Carta
    attr_accessor :numero, :pinta
    def initialize(numero= 1,pinta = 'C')
        @numero = numero
        @pinta = pinta
        numero=Random.rand(1...13) 
        pinta=['C', 'D', 'T', 'E'].sample
    end
end

c1 = Carta.new

pp c1