class EncountersController < ApplicationController
  def blacksmith
    @hero = current_hero 
  end

  def rummage
  end

  def monster
  end
end
