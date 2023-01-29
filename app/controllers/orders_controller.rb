class OrdersController < ApplicationController

    get '/order' do
        order = Order.all
        order.to_json
    end
end