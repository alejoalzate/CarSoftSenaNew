class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.references :center
      t.string :description

      t.timestamps
    end
    add_index :programs, :center_id
  end
end
