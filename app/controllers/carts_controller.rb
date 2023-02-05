class CartsController < ApplicationController

  #get all items that are not purchased
  # get '/cart' do
  #   cart = Cart.all
  #   cart.to_json
  # end

  get '/cart' do
    cart = Cart.all
    cart.to_json(include: {
      produce: { only: [:image, :produce, :price, :discount_price] },
      order: { only: [:name, :phone] }
    })
  end


  get '/purchase' do
    cart = Cart.where(order_id: nil)
    cart.to_json(include: {
      produce: { only: [:image, :produce, :price, :discount_price] },
      order: { only: [:name, :phone] }
    })
  end

  post '/carts' do
    cart = Cart.create(
      produce_id: params[:produce_id],
      order_id: params[:order_id],
      quantity: params[:quantity],
      dsc_quantity: params[:dsc_quantity],
      dsc_total: params[:dsc_total],
      total: params[:total]
    )
    cart.to_json(include: {
      produce: { only: [:image, :produce, :price, :discount_price] }
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
    dsc_quantity: params[:dsc_quantity]
    )
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price] }
  })
end

patch '/update' do
  cart = Cart.where(order_id: nil)
  cart.update(order_id: params[:order_id])
  cart.to_json(include: {
    produce: { only: [:image, :produce, :price, :discount_price] }
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
    order: { only: [:name, :phone]},
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

  #def total
  #  allowed_params = %w(quantity price)
  #  params.selec {|param, value| allowed_params.include?(param)}