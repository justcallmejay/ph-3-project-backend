class CartsController < ApplicationController

  #get all items that are not purchased
  # get '/cart' do
  #   cart = Cart.all
  #   cart.to_json
  # end

  get '/cart' do
    cart = Cart.all
    cart.to_json(include: {
      produce: { only: [:image, :produce, :price] }
    })
  end

  get '/purchase' do
    cart = Cart.where(purchase: true)
    cart.to_json
  end

  post '/carts' do
    cart = Cart.create(
      produce_id: params[:produce_id],
      order_id: params[:order_id],
      quantity: params[:quantity],
      total: params[:total]
    )
    cart.to_json(include: {
      produce: { only: [:image, :produce, :price] }
    })
  end

  #update specific inventory at cart (ProduceCard.js)
  
  # get '/cart/:id' do
  #   cart = Cart.find(params[:id])
  #   cart.to_json
  # end
  
  patch '/cart/:id' do
    cart = Cart.find(params[:id])
    cart.update(quantity: params[:quantity])
    cart.to_json(include: {
      produce: { only: [:image, :produce, :price] }
    })
  end
  
delete '/cart/:id' do
  cart = Cart.find(params[:id])
  cart.destroy
  cart.to_json
end

end
# post '/cart' do
#   cart = Cart.create(
  #     id: params[:id],
  #     produce: params[:produce],
  #     image: params[:image],
  #     quantity: params[:quantity],
  #     price: params[:price],
  #     total: params[:total],
  #     purchase: params[:purchase]
  #     )
  #     cart.to_json
  # end
    
  # patch '/cart/:id' do
  #   cart = Cart.update(
  #     quantity: params[:quantity],
  #     )
  #     cart.to_json
  #   end

