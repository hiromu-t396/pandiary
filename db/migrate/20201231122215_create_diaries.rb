class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :name_and_price
      t.text :comment
      t.float :rate
      t.references :user, foreign_key: true
      # t.references :bakery_id, foreign_key: true
      # t.references :bakery_name, foreign_key: true
      t.timestamps
    end
  end
end
