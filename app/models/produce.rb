class Produce < ActiveRecord::Base
    belongs_to :cart

    # def self.find_by_produce(type)
    #     search_result = Produce.map {|proudce| produce.kind = type }
    #     puts search_result
    # end

    # def self.set
    #     puts self.count
    # end


end