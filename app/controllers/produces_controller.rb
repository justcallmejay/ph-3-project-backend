class ProducesController < ApplicationController

    #get all produce to produce card
    get '/produce' do
    produce = Produce.all
    produce.to_json
    end
    
    #NOT USING; just practice
    # patch '/update/:id' do
    # produce = Produce.find(params[:id])
    # produce.update(quantity: params[:quantity])
    # produce.to_json
    # end
    
    #NOT USING; just practice
    get '/produces/:id' do
    produce = Produce.find(params[:id])
    produce.to_json
    end
    
    #updates store stock (quantity) after user selects item
    patch '/produce/:id' do
    produce = Produce.find(params[:id])
    produce.update(
        quantity: params[:quantity],
        discount_quantity: params[:discount_quantity]
        )
    produce.to_json
    end

    #works
    # patch '/prod/:id' do
    #     produce = Produce.updateProduceQuantity(params[:id], params[:quantity], params[:discount_quantity])
    #     produce.to_json
    # end

    #filter inventory via radio button
    get '/produce/*' do
    produce = Produce.where(kind: params[:splat])
    produce.to_json
    end

    #only works if you type the whole item
    # get '/item/*' do
    #     produce = Produce.where("produce = ?", params[:splat])
    #     produce.to_json
    # end

    
    get '/name/*' do
        partial_text = params[:splat].first
        produce = Produce.where("produce LIKE ?", "%#{partial_text}%")
        produce.to_json
    end

end