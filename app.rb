require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "thisisasecret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session["item"] = params[:item]
        @session = session
    end

end