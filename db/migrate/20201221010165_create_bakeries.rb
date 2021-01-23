class CreateBakeries < ActiveRecord::Migration[6.0]
  def change
    create_table :bakeries do |t|
      t.string   :name,        null: false
      t.string   :address,   null: false
      t.string   :tell
      t.integer  :monday_op_id
      t.integer  :monday_clo_id
      t.integer  :tuesday_op_id
      t.integer  :tuesday_clo_id
      t.integer  :wednesday_op_id
      t.integer  :wednesday_clo_id
      t.integer  :thursday_op_id
      t.integer  :thursday_clo_id
      t.integer  :friday_op_id
      t.integer  :friday_clo_id
      t.integer  :saturday_op_id
      t.integer  :saturday_clo_id
      t.integer  :sunday_op_id
      t.integer  :sunday_clo_id
      t.integer  :parking_id,  null: false
      t.string   :web_site
      t.string   :instagram
      t.string   :twitter
      t.timestamps
    end
  end
end
