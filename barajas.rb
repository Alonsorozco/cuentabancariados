require_relative "cartas"

class Deck
    attr_accessor :card
    def initialize
    @card = []
    number = Array(1..13)
        kind   = %w[C D T E]
            number.each do |n|
                kind.each do |k|
                card.push Card.new(n,k)
                end
            end
    end

    def shuffle
        card.shuffle
    end

    def take_out
        card.pop
    end

    def report_hand
        card.pop(5)
    end

end

a = Deck.new
pp '-------'
pp a.report_hand
pp '-------'
pp a.take_out
pp '-------'
pp a.shuffle