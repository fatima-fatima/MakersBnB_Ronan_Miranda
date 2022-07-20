require 'sinatra/base'
require 'sinatra/reloader'
require './lib/space'
class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions 

  get '/' do
    'Testing'
  end

  get '/add-listing' do
    erb(:add_listing)
  end

  post '/view-listing' do
    Space.create(params[:name], params[:address], params[:price])
    redirect '/view-listing'
  end

  get '/view-listing' do
    @spaces = Space.all
    erb(:view_listing)
  end

  run! if app_file == $0
end