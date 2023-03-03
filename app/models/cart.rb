class Cart < ActiveRecord::Base
    belongs_to :produce
    belongs_to :order

    # def total
    #     return (self.produces.price * self.quantity)
    # end

    def self.total(id)
        a1 = self.find(id)
        a1.quantity * a1.produce.price
    end

    #works
    def self.sort
        carts = Cart.all.where.not(purchased_at: nil)
        carts.sort_by {|amount| amount.purchased_at}
    end

    #works
    def self.totalcart
        cart = Cart.all
        cart.map(&:total).inject(0, &:+)
    end

    #in controller
    def self.getCart
        cart = Cart.all
    end

    #works
    def totalAcc(id)
        cart = Cart.where(order_id: id)
        #Below doesn't work because .order is believed to be a method; when returning cart, it returns an array, which means that you need to iterate through it in order to access the values
        #cart.order
        cart.map {|name| name.produce.price}.sum
    end

    #get account from Cart
    def self.findAcc(card)
        cart = Cart.where(order_id: card)
        cart.map {|person| person.order.name}
        # (include: {order: {only: [name]}})
    end

    # def self.

end

