class Produce < ActiveRecord::Base
    has_many :carts
    has_many :orders, through: :carts

def self.getProduce(food)
    partial_text = food.first
    produce = self.where("produce LIKE ?", "%#{partial_text}%")
end

def self.filterProduce(food)
    produce = self.where(kind: food)
end

def self.updateProduce(food, foodQuantity = nil, discountQuantity = nil)
    produce = self.find(food)
    produce.update(quantity: foodQuantity) if foodQuantity
    produce.update(discount_quantity: discountQuantity) if discountQuantity
end

end