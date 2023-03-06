class ProducesController < ApplicationController

#get all produce to produce card
get '/produce' do
produce = Produce.all
produce.to_json
end

#in model
#in React
get '/name/*' do
produce = Produce.getProduce(params[:splat])
produce.to_json
end

#filter inventory via radio button
#in model
#in react
get '/produce/*' do
    produce = Produce.filterProduce(params[:splat])
    produce.to_json
end

#in react
#in Confirm.js
#updates store stock (quantity) after user selects item
patch '/produce/:id' do
    produce = Produce.updateProduce(params[:id], params[:quantity], params[:discount_quantity])
    produce.to_json
end

end