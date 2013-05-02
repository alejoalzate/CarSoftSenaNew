class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.integer :score
      t.boolean :letter
      t.references :category

      t.timestamps
    end
    add_index :questions, :category_id
  end
end
