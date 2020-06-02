class HomeController < ApplicationController

  def mobsindex
    render json: Mob.all.to_json({:include => [:moves]})
    
  end

  def monstindex
    render json: Monst.all.to_json({:include => [:moves]})
end

deff random

end