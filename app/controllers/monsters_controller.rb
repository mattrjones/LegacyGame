class MonstersController < ApplicationController

    def new 
        @monster = Monster.new 
    end 

    def create
        @monster = Monster.create
        @monster.randomize 
        redirect_to @monster
   end 

    def show 
        @monster = Monster.find(params[:id])
    end 
end
