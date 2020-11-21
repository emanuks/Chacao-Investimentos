class CreateApplicationDts < ActiveRecord::Migration[6.0]
  def change
    create_table :application_dts do |t|
      t.integer :quantity
      t.references :user, null: false, foreign_key: true
      t.references :direct_treasure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
