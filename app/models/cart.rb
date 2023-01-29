class Cart < ActiveRecord::Base
    belongs_to :produces
    belongs_to :orders

end