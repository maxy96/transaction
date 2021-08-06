class CreatePaymentDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_details do |t|
      t.string :remember_token
      t.integer :currency
      t.string :total_amount
      t.string :total_discount
      t.string :total_with_discount

      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
