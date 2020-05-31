class ApplicationController < ActionController::Base
    helper_method :current_hero
    def current_hero  
        current_hero = Hero.find(1)  
    end 
end
