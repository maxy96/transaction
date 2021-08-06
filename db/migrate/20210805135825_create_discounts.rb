class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :remember_token
      t.string :amount
      t.integer :reason
      
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
