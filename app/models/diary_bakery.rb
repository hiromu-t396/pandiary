class DiaryBakery < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :name_and_price, :comment, :rate, :tag_list, :images, :name, :address, :tell, :monday_op_id, :monday_clo_id, :tuesday_op_id, :tuesday_clo_id, :wednesday_op_id, :wednesday_clo_id, :thursday_op_id, :thursday_clo_id, :friday_op_id, :friday_clo_id, :saturday_op_id, :saturday_clo_id, :sunday_op_id, :sunday_clo_id, :parking_id, :web_site, :instagram, :twitter, :user_id, :bakery_id

  with_options presence: true do
    validates :name_and_price
    validates :comment
    validates :name
    validates :address
    validates :parking_id, numericality: { other_than: 1 }
  end

  def save
    bakery = Bakery.create(name: name, address: address, tell: tell, monday_op_id: monday_op_id, monday_clo_id: monday_clo_id, tuesday_op_id: tuesday_op_id, tuesday_clo_id: tuesday_clo_id, wednesday_op_id: wednesday_op_id, wednesday_clo_id: wednesday_clo_id, thursday_op_id: thursday_op_id, thursday_clo_id: thursday_clo_id, friday_op_id: friday_op_id, friday_clo_id: friday_clo_id, saturday_op_id: saturday_op_id, saturday_clo_id: saturday_clo_id, sunday_op_id: sunday_op_id, sunday_clo_id: sunday_clo_id, parking_id: parking_id, web_site: web_site, instagram: instagram, twitter: twitter )
    diary = Diary.create!(name_and_price: name_and_price, comment: comment, rate: rate, images: images, user_id: user_id, bakery_id: bakery.id)
  end
end
