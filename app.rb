require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Battle < Sinatra::Base

    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        $game = Game.new(Player.new(params[:Player_1]), Player.new(params[:Player_2]))
        redirect '/play'
    end

    get '/play' do
        @player_1_name = $game.player_1.name
        @player_2_name = $game.player_2.name
        @player_2_hp = $game.player_2.hp
        erb(:play)
    end

    post '/attack' do
        $game.attack($game.player_2)
        session[:message] = "Successful attack!"
        redirect '/play'
    end


    # start server if ruby file executed directly
    run! if app_file == $0
end
