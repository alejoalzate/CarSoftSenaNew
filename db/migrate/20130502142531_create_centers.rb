class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :name
      t.references :code

      t.timestamps
    end
    add_index :centers, :code_id
  end
end
