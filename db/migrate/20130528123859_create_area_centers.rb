class CreateAreaCenters < ActiveRecord::Migration
  def change
    create_table :area_centers do |t|
      t.string :name
      t.string :extension
      t.references :center
      t.string :phone
      t.string :specification

      t.timestamps
    end
    add_index :area_centers, :center_id
  end
end
