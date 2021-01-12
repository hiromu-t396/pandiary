class Bakery < ApplicationRecord
  has_many :diaries
  belongs_to :monday
end
