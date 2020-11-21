class CreateInvestmentFunds < ActiveRecord::Migration[6.0]
  def change
    create_table :investment_funds do |t|
      t.string :class
      t.string :name
      t.string :redemption_period
      t.float :value

      t.timestamps
    end
  end
end
