class CreateTransactionPays < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_pays do |t|
      t.string :remember_token
      t.string :amount
      t.integer :status
      t.references :payment, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
