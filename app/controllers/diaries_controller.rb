class DiariesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:name_and_price, :comment, :tag_list, :rate, images: []).merge(user_id: current_user.id)
  end
end
