class HomeController < ApplicationController

  def mobsindex
    render json: Mob.all.to_json({:include => [:moves]})
    
  end

  def monstindex
    render json: Monst.all.to_json({:include => [:moves]})
end

def random
  monst = Monst.all
  render json: monst.sample.to_json({:include => [:moves]})
end

def mobshow
 render json: Mob.find(params[:id]).to_json({:include => [:moves]})
end


end