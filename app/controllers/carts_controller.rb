class CartsController < ApplicationController
  
#in models
#in React
get '/cart/:id' do
  cart = Cart.getOrder(params[:id])
  cart.to_json(include: {
    order: { only: [:name, :phone, :credit_card, :exp_mon, :exp_yr, :code]},
    produce: { only: [:produce, :price, :discount_price]}
  })
end
  
#in models
#in React
delete '/cart/:id' do
  cart = Cart.deleteCart(params[:id])
  cart.to_json
end

#in models
#in React
get '/purchased' do
  cart = Cart.filterOrders
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price, :quantity, :discount_quantity] },
    order: { only: [:name, :phone, :credit_card, :exp_mon, :exp_yr, :code] }
  })
end

#in React
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

#in React
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
  
#In React
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

end

    
    
    