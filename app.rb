require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/newpuppy' do
    text_from_user = params
    @analyzed_text = Puppy.new(text_from_user)
    erb :create_puppy
  end

end
