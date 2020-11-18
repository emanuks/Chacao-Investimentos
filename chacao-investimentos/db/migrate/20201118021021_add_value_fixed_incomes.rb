class AddValueFixedIncomes < ActiveRecord::Migration[6.0]
  def change
    add_column :fixed_incomes, :value, :float
  end
end
