require 'sinatra/base'
require 'sinatra/reloader'

class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing'
  end

  get '/add-listing' do
    erb(:add_listing)
  end

  post '/view-listing' do
    redirect '/view-listing'
  end

  get '/view-listing' do
    erb(:view_listing)
  end

  run! if app_file == $0
end