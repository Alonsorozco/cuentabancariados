require_relative "cartas"

class Baraja
    attr_accessor :cartas
    def initialize
    @cartas = []
    number = Array(1..13)
        kind   = %w[C D T E]
            number.each do |n|
                kind.each do |k|
                cartas.push Card.new(n,k)
                end
            end
    end

    def barajar
        cartas.shuffle
    end

    def sacar
        cartas.pop
    end

    def repartir_mano
        cartas.pop(5)
    end

end

a = Baraja.new
pp '-------'
pp a.repartir_mano
pp '-------'
pp a.sacar
pp '-------'
pp a.barajar