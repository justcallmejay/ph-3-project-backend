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

    # def image_url
    #     return self.produce.image
    # end

    # def get_produce
    #     return self.produce.produce
    # end

    # def self.sum
    #     carts.map{|cart| cart.total = (self.produces.price * self.quantity)}
    # end

    def self.orders
        self.find_by(order_id: 1)
    end

end

