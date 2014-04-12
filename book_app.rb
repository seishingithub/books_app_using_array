require 'sinatra/base'

class BookApp < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/' do
    params[:book]
  end
end