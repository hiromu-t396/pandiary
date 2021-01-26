class DiariesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @diary_bakery = DiaryBakery.new
  end

  def create
    binding.pry
    @diary_bakery = DiaryBakery.create(diary_params)
     if @diary_bakery.save
       redirect_to action: :index
     else
      redirect_to action: :new
     end
  end

  private

  def bakery
    bakery = Bakery.find(params[:bakery_id])
  end

  def diary_params
    params.require(:diary_bakery).permit(:name_and_price, :comment, :tag_list, :rate, :name, :address, :tell, :monday_op_id, :monday_clo_id, :tuesday_op_id, :tuesday_clo_id, :wednesday_op_id, :wednesday_clo_id, :thursday_op_id, :thursday_clo_id, :friday_op_id, :friday_clo_id, :saturday_op_id, :saturday_clo_id, :sunday_op_id, :sunday_clo_id, :parking_id, :web_site, :instagram, :twitter, images: []).merge(user_id: current_user.id)
  end
end
