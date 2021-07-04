class User
    attr_accessor :count
    def initialize (name, count)
        @name = name
        @count = count

    end
    #suma de saldo total
    def total_balance
        balance= 0
        self.count.each do |i|
            balance+= i.balance
        end
        return balance
    end
end


class Bankaccount
    attr_accessor :balance, :number_count
    def initialize(bank,number_count,balance=0)
        @bank= bank
        @number_count = number_count
        @balance = balance
    end
    def transfer (amount, another_account)
        self.balance -= amount
        another_account.balance += amount
    end
end


a = Bankaccount.new('Itau', 15484565, 5000)
b = Bankaccount.new('Estado', 12545652, 5000)

#transferir a otra cuenta 
pp a.transfer(500,b)

#creando un nuevo usario
u1 = User.new('Fabian', [a])
pp u1
#saldo total
total = u1.total_balance
pp "Fabian su saldo total es: #{total}"