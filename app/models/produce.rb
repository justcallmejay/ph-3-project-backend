class Produce < ActiveRecord::Base
    has_many :carts
    has_many :orders, through: :carts

    #works
    def self.show_sum_price
        get_price = Produce.all.map { |food| food.price }
        get_price.sum
    end

    #works
    def self.show_sum_inventory
        get_stock = Produce.all.map { |food| food.quantity}
        get_stock.sum
    end

    #works
    def self.show_produce_with_find_lowest_price
        get_lowest = Produce.all.select { |food| food.price < 2 }
        get_lowest.map {|food| food.produce}
    end

    #works
    def self.find_by_produce(type)
        search_result = Produce.where(kind: type)
        search_result
    end

    #works
    def self.getAmount(amount)
        produce = Produce.where(price: amount)
        produce
    end

    #works
    def self.reset_quantity_to_original(num)
        produce = Produce.find(num)
        produce.update(quantity: 300)
    end

    #will only udpate if values are provided
    # def self.updateProduceQuantity(id, qty = nil, dscqty = nil)
    #     prod = Produce.find(id)
    #     prod.update(quantity: qty) if qty 
    #     prod.update(discount_quantity: dscqty) if dscqty
    # end

    #for values that will set to zero if no values are present
    # def self.updateProduceQuantity(id, qty = 0, dscqty = 0)
    #     prod = Produce.find(id)
    #     qty ||= 0
    #     dscqty ||= 0
    #     prod.update(quantity: qty, discount_quantity: dscqty)
    # end


end