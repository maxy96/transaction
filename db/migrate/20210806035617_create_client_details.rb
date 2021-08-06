class CreateClientDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :client_details do |t|
      t.references :client, null: false, foreign_key: true
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :job
      t.string :country
      t.string :address
      t.string :zip_code
      t.string :phone

      t.timestamps
    end
  end
end
