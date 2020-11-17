class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :cep
      t.string :city
      t.string :state
      t.string :neighbordhood
      t.string :complement
      t.integer :number

      t.timestamps
    end
  end
end
