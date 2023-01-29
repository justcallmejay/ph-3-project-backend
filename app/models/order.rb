class Order < ActiveRecord::Base
    has_many :carts
    has_many :produces, through: carts

end