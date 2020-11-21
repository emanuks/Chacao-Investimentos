class CreateApplicationFis < ActiveRecord::Migration[6.0]
  def change
    create_table :application_fis do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fixed_income, null: false, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
