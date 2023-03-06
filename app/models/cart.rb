class Cart < ActiveRecord::Base
    belongs_to :produce
    belongs_to :order
    
#in controller
def self.getOrder(id)
    cart = Cart.where(order_id: id)
end

#in controller
def self.deleteCart(id)
    cart = Cart.find(id)
    cart.destroy
end

#in controller
def self.filterOrders
    cart = Cart.where.not(order_id: nil)
end

end

