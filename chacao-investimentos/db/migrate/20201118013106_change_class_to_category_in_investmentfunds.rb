class ChangeClassToCategoryInInvestmentfunds < ActiveRecord::Migration[6.0]
  def change
    rename_column :investment_funds, :class, :category
  end
end
