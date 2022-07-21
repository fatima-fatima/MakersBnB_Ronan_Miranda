require 'sinatra/base'
require 'sinatra/reloader'
require './lib/space'
require './lib/user'
class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions 

  get '/' do
    erb(:index)
  end

  post '/new_user' do
    User.create(params[:username],params[:email],params[:password])
    redirect '/add-listing'
  end

  get '/add-listing' do
    erb(:add_listing)
  end

  post '/view-listing' do
    Space.create(params[:name], params[:address], params[:price], params[:start], params[:end])
    redirect '/view-listing'
  end

  get '/view-listing' do
    @spaces = Space.all
    erb(:view_listing)
  end

  run! if app_file == $0
end