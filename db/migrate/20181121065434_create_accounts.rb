class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :dob
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :account_number
      t.decimal :balance
      t.string :account_pin

      t.timestamps
    end
  end
end
