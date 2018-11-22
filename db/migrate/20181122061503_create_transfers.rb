class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.string :account_number
      t.string :account_pin
      t.string :amount
      t.integer :user_id
      t.references :account, foreign_key: true

      t.timestamps
    end
    
  end
end
