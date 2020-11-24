class CreateApplicationIfs < ActiveRecord::Migration[6.0]
  def change
    create_table :application_ifs do |t|
      t.float :value
      t.references :user, null: false, foreign_key: true
      t.references :investment_fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
