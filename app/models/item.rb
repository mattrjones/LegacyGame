class Item < ApplicationRecord
    belongs_to :hero

    def upg_exp_cost
        1.5 * self.bonus
    end 
    
    def upg_amt
        0.1 * self.bonus 
    end 

    def stat_name 
        case self.stat 
        when "attk_val" 
            "attack value"
        when "def_val"
            "defense value"
        when "hp"
            "hit points"
        else 
            "You broke something"
        end
    end
end
