class Order < ActiveRecord::Base
    has_many :carts
    has_many :produces, through: :carts

    
#in controller
def self.getPersonOrder(num)
    order = Order.find_by(credit_card: num)
end

end