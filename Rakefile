require_relative './config/environment.rb'
require 'sinatra/activerecord/rake'

desc "Runs a Pry console"
task :console do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Pry.start
end

desc "Start the server"
task :server do
  exec "rerun -b 'rackup config.ru'"
end
