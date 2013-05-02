class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :finger_print
      t.boolean :male
      t.boolean :female
      t.string :identification
      t.string :key
      t.string :email
      t.string :address_residence
      t.string :phone
      t.string :movil
      t.references :document
      t.references :rh
      t.references :role
      t.references :type

      t.timestamps
    end
    add_index :users, :document_id
    add_index :users, :rh_id
    add_index :users, :role_id
    add_index :users, :type_id
  end
end
