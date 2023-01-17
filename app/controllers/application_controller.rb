class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
  end

  get '/produce' do
    produce = Produce.all
    produce.to_json
  end