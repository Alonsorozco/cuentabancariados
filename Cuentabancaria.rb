class Usuario
    attr_accessor :cuentas
    def initialize (nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas

    end
    #suma de saldo total
    def saldo_total
        saldo= 0
        self.cuentas.each do |i|
            saldo+= i.saldo
        end
        return saldo
    end
end


class CuentaBancaria
    attr_accessor :saldo, :numero_de_cuenta
    def initialize(banco,numero_de_cuenta,saldo=0)
        @banco= banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end
    def transferir (monto, otra_cuenta)
        self.saldo -= monto
        otra_cuenta.saldo += monto
    end
end


a = CuentaBancaria.new('Itau', 15484565, 5000)
b = CuentaBancaria.new('Estado', 12545652, 5000)

#transferir a otra cuenta 
pp a.transferir(500,b)

#creando un nuevo usario
u1 = Usuario.new('Fabian', [a])
pp u1
#saldo total
total = u1.saldo_total
pp "Fabian su saldo total es: #{total}"