class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to diaries_path
    else 
      render :new
    end
  end

  def index
    @diary = Diary.all
  end

  def edit
    @diary = Diary.find(params[:id])
    unless user_signed_in?
      redirect_to diaries_path
    end
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to diaries_path
    else render :edit
    end
  end

  def destroy
    diary = Diary.find(params[:id])
    if diary.destroy
    redirect_to diaries_path
    end
  end

  private
  def diary_params
    params.require(:diary).permit(:date, :text, :image).merge(user_id: current_user.id)
  end
end
