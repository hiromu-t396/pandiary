class Bakery < ApplicationRecord
  has_many :diaries
  belongs_to :open
end
