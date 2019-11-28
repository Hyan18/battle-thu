require 'sinatra/base'

require './lib/player.rb'

class Battle < Sinatra::Base

    enable :sessions
    
    get '/' do
        erb(:index)
    end

    post '/names' do
        $player_1 = Player.new(params[:Player_1])
        $player_2 = Player.new(params[:Player_2])
        redirect '/play'
    end

    get '/play' do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        @player_2_hp = $player_2.hp
        erb(:play)
    end

    post '/attack' do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        $player_1.attack($player_2)
        session[:message] = "Successful attack!"
        redirect '/play'
    end


    # start server if ruby file executed directly
    run! if app_file == $0
end
