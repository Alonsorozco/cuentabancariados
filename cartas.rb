
class Card
    attr_accessor :number, :kind
    def initialize(number=1,kind= 'C')
        @number = number
        @kind = kind
        number=Random.rand(1...13) 
        kind=['C', 'D', 'T', 'E'].sample
        @number = number
        @kind = kind
    end
end
