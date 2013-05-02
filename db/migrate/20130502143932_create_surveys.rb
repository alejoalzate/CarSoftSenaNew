class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :user
      t.string :description

      t.timestamps
    end
    add_index :surveys, :user_id
  end
end
