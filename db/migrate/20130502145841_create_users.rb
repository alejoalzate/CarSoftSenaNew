class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :finger_print
      t.boolean :female
      t.string :identification
      t.string :key
      t.string :email
      t.string :address_residence
      t.string :phone
      t.string :movil
      t.references :responsible
      t.references :document
      t.references :rh
      t.references :rol
      t.references :type_user

      t.timestamps
    end

    add_index :users, :responsible_id
    add_index :users, :document_id
    add_index :users, :rh_id
    add_index :users, :rol_id
    add_index :users, :type_user_id
  end
end
