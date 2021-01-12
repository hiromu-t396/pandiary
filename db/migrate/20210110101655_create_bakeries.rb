class CreateBakeries < ActiveRecord::Migration[6.0]
  def change
    create_table :bakeries do |t|
      t.string   :name,        null: false
      t.string   :address,   null: false
      t.string   :tell
      t.integer  :monday_id
      t.integer  :tuesday_id
      t.integer  :wednesday_id
      t.integer  :thursday_id
      t.integer  :friday_id
      t.integer  :saturday_id
      t.integer  :sunday_id
      t.integer  :parking_id,  null: false
      t.string   :web_site
      t.string   :instagram
      t.string   :twitter
      t.timestamps
    end
  end
end
