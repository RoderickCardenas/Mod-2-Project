class GamesController < ApplicationController

    def welcome
    end
    
    def index
        @games = Game.all
    end

    # def new
    #     @game = Game.new
    # end

    def show
        @game = Game.find(params[:id])
    end

    # def create
    #     @game = Game.create(game_params)
    #     if @game.save
    #         redirect_to game_path(@game)
    #     else
    #         render :new
    #     end
    # end
end
