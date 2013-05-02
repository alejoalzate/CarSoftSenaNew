class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.time :time
      t.integer :amount
      t.boolean :movements
      t.string :destination
      t.references :center
      t.string :provenance
      t.references :vehicle
      t.references :porter
      t.references :material
      t.references :user

      t.timestamps
    end
    add_index :records, :center_id
    add_index :records, :vehicle_id
    add_index :records, :porter_id
    add_index :records, :material_id
    add_index :records, :user_id
  end
end
