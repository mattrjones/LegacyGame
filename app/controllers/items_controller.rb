class ItemsController < ApplicationController

    def upgrade
        @item = Item.find_by(params[:id])
    end 

    def show 
        @item = Item.find_by(params[:id])
    end

end
