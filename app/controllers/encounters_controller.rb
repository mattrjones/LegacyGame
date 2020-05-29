class EncountersController < ApplicationController
  def blacksmith
    @hero = Hero.find(1) 
  end

  def rummage
  end

  def monster
  end
end
