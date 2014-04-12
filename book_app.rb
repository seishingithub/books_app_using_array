require 'sinatra/base'

class BookApp < Sinatra::Application
  TITLES = []
  get '/' do
    erb :index, locals: {titles: TITLES}
  end

  get '/new' do
    erb :new_title
  end

  post '/' do
    book = params[:book] #params takes book title we typed & assigns to book var
    TITLES << book  # which is shoved into TITLES array
    redirect '/'
  end
end
