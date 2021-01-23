class Diary < ApplicationRecord
  # タグ機能実装のためのもの
  acts_as_taggable

  belongs_to :user
  belongs_to :bakery
  has_many_attached :images
end
