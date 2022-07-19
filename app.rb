require 'sinatra/base'
require 'sinatra/reloader'

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
    session[:name] = params[:name]
    session[:address] = params[:address]
    session[:price] = params[:price]
    session[:start] = params[:start]
    session[:end] = params[:end]

    redirect '/view-listing'
  end

  get '/view-listing' do
    @name = session[:name]
    @address = session[:address]
    @price = session[:price]
    @start_date = session[:start]
    @end_date = session[:end]
    
    erb(:view_listing)
  end

  run! if app_file == $0
end