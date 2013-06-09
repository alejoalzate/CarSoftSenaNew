class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.string :code
      t.references :program

      t.timestamps
    end
    add_index :center_programs, :program_id
  
  end
end
