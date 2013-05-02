class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :code
      t.references :program

      t.timestamps
    end
    add_index :sheets, :program_id
  end
end
