class GrowsController < ApplicationController
    
  def index
    @grow = Grow.all
  end 

  def new
    @grow = Grow.new
  end
  
  def create
    @grow = Grow.new(grow_params)
    if @grow.save
      redirect_to root_path
    else 
      render :new
    end
  end
  
  private
    def grow_params
      params.require(:grow).permit(:weight, :height).merge(pet_id: params[:pet_id])
    end
end
