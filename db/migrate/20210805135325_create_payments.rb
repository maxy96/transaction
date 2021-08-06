class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.date :date_payment
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
