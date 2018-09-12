require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/newpuppy' do
    erb :create_puppy
  end


  post '/displaypuppy' do
    text_from_user = params
    @analyzed_text = Puppy.new(text_from_user)
    erb :create_puppy
  end

end
