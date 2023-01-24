class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

  get '/produce' do
    produce = Produce.all
    produce.to_json
  end
  
  get '/cart' do
    cart = Cart.all
    cart.to_json
  end

  patch '/cart/:id' do
    cart = Cart.find(params[:id])
    cart.update(quantity: params[:quantity])
    cart.to_json
  end
  
  get '/produce/:id' do
    produce = Produce.find(params[:id])
    produce.to_json
  end

  patch '/produce/:id' do
    produce = Produce.find(params[:id])
    produce.update(quantity: params[:quantity])
    produce.to_json
  end

  patch '/update/:id' do
    produce = Produce.find(params[:id])
    produce.update(quantity: params[:quantity])
    produce.to_json
  end


  get '/cart/:id' do
    cart = Cart.find(params[:id])
    cart.to_json
  end
  #Most works
  # get '/produce' do
  #   produce = Produce.where(kind: "vegetable")
  #   produce.to_json
  # end


  get '/produce/*' do
    produce = Produce.where(kind: params[:splat])
    produce.to_json
  end

  post '/cart' do
    cart = Cart.create(
      produce: params[:produce],
      image: params[:image],
      quantity: params[:quantity],
      price: params[:price],
      total: params[:total]
    )
    cart.to_json
  end


  delete '/delete/:id' do
    cart = Cart.find(params[:id])
    cart.destroy
    cart.to_json
  end

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

end