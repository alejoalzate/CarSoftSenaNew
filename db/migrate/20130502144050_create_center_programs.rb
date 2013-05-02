class CreateCenterPrograms < ActiveRecord::Migration
  def change
    create_table :center_programs do |t|
      t.references :center
      t.references :user
      t.references :program

      t.timestamps
    end
    add_index :center_programs, :center_id
    add_index :center_programs, :user_id
    add_index :center_programs, :program_id
  end
end
