class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'





      
      #Most works
      # get '/produce' do
      #   produce = Produce.where(kind: "vegetable")
      #   produce.to_json
      # end
      
      
      
      
      # def produce_params
      #   allowed_params = %w(produce image price quantity total)
      #   params.select {|param,value| allowed_params.include?(param)}
      # end
      
      
      # get '/?filterby=:find' do
      # produce = Produce.map {|find| = find.kind}
      # produce.to_json
      # end
      # end
      
      # get '/produce/:select' do
      #   produce = Produce.select { |x| x.kind == 'select'}
      #   produce.to_json
      # end
      
      # get "/produce/&kind" do 
      #   dog = Produce.where(:kind)
      #   format_as_json(dog)
      # end
      
      # get '/produce=vegetable' do
      #   produce = Produce.all
      
      #   produce.to_json(only: [:kind == 'vegetable'])
      # end

      # purchase: params[:purchase]
      # name: params[:name],
      # phone: params[:phone],
      # discount: params[:discount],
      # discount_cost: params[:discount_cost],
      # discount_quantity: params[:discount_quantity],
      # name: params[:name],
      # phone: params[:phone],
      # card: params[:card],
      # card_exp: params[:card_exp],
      # code: params[:code]
      
    end