class CreateDiaryBakeries < ActiveRecord::Migration[6.0]
  def change
    create_table :diary_bakeries do |t|

      t.timestamps
    end
  end
end
