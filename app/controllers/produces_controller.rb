class ProducesController < ApplicationController

    #get all produce to produce card
    get '/produce' do
    produce = Produce.all
    produce.to_json
    end
    
    #NOT USING; just practice
    patch '/update/:id' do
    produce = Produce.find(params[:id])
    produce.update(quantity: params[:quantity])
    produce.to_json
    end
    
    #NOT USING; just practice
    get '/produce/:id' do
    produce = Produce.find(params[:id])
    produce.to_json
    end
    
    #updates store stock (quantity) after user selects item
    patch '/produce/:id' do
    produce = Produce.find(params[:id])
    produce.update(quantity: params[:quantity])
    produce.to_json
    end

    #filter inventory via radio button
    get '/produce/*' do
    produce = Produce.where(kind: params[:splat])
    produce.to_json
    end

end