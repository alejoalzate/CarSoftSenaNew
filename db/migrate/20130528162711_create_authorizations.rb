class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.string :name
      t.string :surname
      t.boolean :genre
      t.references :document
      t.string :identification
      t.text :item_description
      t.string :charge
      t.string :phone
      t.string :avatar
      t.boolean :repair
      t.boolean :sample_property
      t.boolean :loan
      t.boolean :seminar
      t.string :course_elements
      t.boolean :others
      t.date :date
      t.boolean :acceptance
      t.references :user

      t.timestamps
    end
    add_index :authorizations, :document_id
    add_index :authorizations, :user_id
  end
end
