require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end


  get '/create_puppy' do
    erb :create_puppy
  end

  post '/create_puppy' do
  @new_puppy = Puppy.new(params[:puppy])

    erb :display_puppy
end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    erb: display_puppy
end
