class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def index
    @diaries = Diaries.all
  end

  private
  def diary_params
    params.require(:diary).permit(:date, :text, :image).merge(user_id: current_user.id)
  end
end
