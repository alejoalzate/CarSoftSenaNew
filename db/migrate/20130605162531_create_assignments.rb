class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.references :rh
      t.references :role

      t.timestamps
    end
  end
end
