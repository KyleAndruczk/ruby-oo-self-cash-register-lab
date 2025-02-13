require 'pry'


class CashRegister

    attr_accessor :total, :discount, :last_transaction, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += (quantity * price)
        quantity.times do 
            self.items.push(title)
        end
        self.last_transaction = quantity * price
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            p "After the discount, the total comes to $#{self.total}."
        else
            p "There is no discount to apply."
        end

        # binding.pry
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end 

    # binding.pry
end
