class Cart < ActiveRecord::Base
    belongs_to :produce
    belongs_to :order

end