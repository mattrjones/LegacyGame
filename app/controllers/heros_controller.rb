class HerosController < ApplicationController
    def new 
        @hero = Hero.new 
    end 

    def create 
        @hero = Hero.create(hero_params)
        if @hero.save
            redirect_to hero_path(@hero) 
        else 
            render 'new'
        end 
    end 

    def show 
        @hero = Hero.find_by(params[:id])
    end 

    private 

    def hero_params
        params.require(:hero).permit(:name, :attk_val, :def_val, :hp, :exp_total)
    end 
end
