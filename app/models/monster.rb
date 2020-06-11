class Monster < ApplicationRecord
    def randomize
        self.hp = rand((0.8 * Hero.find(1).hp)..(1.2 * Hero.find(1).hp))
        self.attk_val = rand((0.8 * Hero.find(1).attk_val)..(1.2 * Hero.find(1).attk_val))
        self.def_val = rand((0.8 * Hero.find(1).def_val)..(1.2 * Hero.find(1).def_val))
        self.exp_gain = self.hp * 0.2
        self.save 
    end 

    def stat_name 
        case self 
        when "attk_val"
            "attack strength"
        when "def_val" 
            "defense strength"
        when "hp"
            "hit points"
        when "exp_gain"
            "experience point yield"
        else 
            "You broke something"
        end 
    end 
end
