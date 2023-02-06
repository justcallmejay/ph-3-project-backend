class Cart < ActiveRecord::Base
    belongs_to :produce
    belongs_to :order

    # def total(id)
    #     find_item = produce.map{|food| food.id}
    #     puts find_item
    # end

    # def total
    #     return (self.produces.price * self.quantity)
    # end

    # def self.total(id)
    #     a1 = self.find(id)
    #     puts a1.quantity * a1.produce.price
    # end

    # def get_produce
    #     return self.produce.produce
    # end

    # def self.sum
    #     carts.map{|cart| cart.total = (self.produces.price * self.quantity)}
    # end

    # def self.orders
    #     stuff = self.find_by(order_id: 3)
    #     puts stuff
    # end

    # def sum_cost
    #     carts.map do |items|
    #     puts items.quantity
    #   end
    # end

end

