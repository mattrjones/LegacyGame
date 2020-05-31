class ItemsController < ApplicationController

    def upgrade
        @item = Item.find_by(params[:id])
        @hero = Hero.find(1)
        if @hero.exp_total < @item.upg_exp_cost
            redirect_to "/encounters/blacksmith", notice: "You don't have enough exp to do this."
        elsif @hero.exp_total >= @item.upg_exp_cost
            render 'upgrade' 
        end
    end 

    def show 
        @item = Item.find_by(params[:id])
    end

end
