class OrdersController < ApplicationController

    get '/order' do
        order = Order.all
        order.to_json
    end

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

    get '/order/:id' do
        order = Order.find(params[:id])
        order.to_json
    end

    delete '/order/:id' do
        order = Order.find(params[:id])
        order.destroy
        order.to_json
    end

end