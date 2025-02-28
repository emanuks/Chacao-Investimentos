class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :account_type, null: false, foreign_key: true
      t.string :number
      t.integer :agency
      t.integer :bank_code

      t.timestamps
    end
  end
end
