class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.boolean :type_team
      t.string :name
      t.string :serial
      t.boolean :mouse
      t.boolean :charger
      t.string :color
      t.references :porter
      t.references :user

      t.timestamps
    end
    add_index :teams, :porter_id
    add_index :teams, :user_id
  end
end
