class CartsController < ApplicationController

  #get all items that are not purchased
  # get '/cart' do
  #   cart = Cart.all
  #   cart.to_json
  # end

get '/cart' do
  cart = Cart.all
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price, :quantity, :discount_quantity] },
    order: { only: [:name, :phone, :credit_card, :exp_mon, :exp_yr, :code] }
  })
end


get '/purchase' do
  cart = Cart.where(order_id: nil)
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price] },
    order: { only: [:name, :phone, :credit_card] }
  })
end

post '/carts' do
  cart = Cart.create(
    produce_id: params[:produce_id],
    order_id: params[:order_id],
    quantity: params[:quantity],
    total: params[:total],
    dsc_quantity: params[:dsc_quantity],
    dsc_total: params[:dsc_total]
  )
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price, :quantity, :discount_quantity] }
  })
end

  #update specific inventory at cart (ProduceCard.js)
  
  # get '/cart/:id' do
  #   cart = Cart.find(params[:id])
  #   cart.to_json
  # end
  
patch '/cart/:id' do
  cart = Cart.find(params[:id])
  cart.update(
    quantity: params[:quantity],
    total: params[:total],
    dsc_quantity: params[:dsc_quantity],
    dsc_total: params[:dsc_total]
    )
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price, :quantity, :discount_quantity] }
  })
end

patch '/account/:id' do
  cart = Cart.find(params[:id])
  cart.update(
    order_id: params[:order_id],
    purchased_at: params[:purchased_at]
  )
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price] },
    order: { only: [:name, :phone, :credit_card, :exp_mon, :exp_yr, :code, :purchased_at] }
  })
end
  
delete '/cart/:id' do
  cart = Cart.find(params[:id])
  cart.destroy
  cart.to_json
end

get '/cart/:id' do
  cart = Cart.where(order_id: params[:id])
  cart.to_json(include: {
    order: { only: [:name, :phone, :credit_card, :exp_mon, :exp_yr, :code]},
    produce: { only: [:produce, :price, :discount_price]}
  })
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


    
    