class CashRegister
    attr_reader :discount, :items
    attr_accessor :total

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @quantity = quantity
        self.total += price * quantity
        quantity.times do
            self.items << title
        end
    end
    def apply_discount
        if self.discount.class.ancestors.include?(Numeric) && self.discount > 0
            self.total = self.total * (100 - self.discount) / 100
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        self.total -= @price * @quantity
    end

end     
