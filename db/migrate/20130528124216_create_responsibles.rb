class CreateResponsibles < ActiveRecord::Migration
  def change
    create_table :responsibles do |t|
      t.string :name
      t.string :surname
      t.string :extension
      t.references :document
      t.string :identification
      t.boolean :genre
      t.references :area_center
      t.string :phone

      t.timestamps
    end
    add_index :responsibles, :document_id
    add_index :responsibles, :area_center_id
  end
end
