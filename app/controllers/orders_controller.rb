class OrdersController < ApplicationController
    
#in React
post '/order' do
    order = Order.create(
        name: params[:name],
        phone: params[:phone],
        credit_card: params[:credit_card],
        exp_mon: params[:exp_mon],
        exp_yr: params[:exp_yr],
        code: params[:code]
        )
    order.to_json
end

#in model
#in React
get '/order/find=*' do
    order = Order.getPersonOrder(params[:splat])
    order.to_json
end

end