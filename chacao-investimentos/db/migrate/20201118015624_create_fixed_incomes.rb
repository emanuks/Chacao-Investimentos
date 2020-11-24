class CreateFixedIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :fixed_incomes do |t|
      t.string :category
      t.string :entity
      t.integer :due_date
      t.time :time_limit
      t.float :tax

      t.timestamps
    end
  end
end
