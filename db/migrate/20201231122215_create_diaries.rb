class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :name_and_price, null: false
      t.text :comment, null: false
      t.float :rate
      t.references :user, foreign_key: true
      t.references :bakery, foreign_key: true
      t.timestamps
    end
  end
end
