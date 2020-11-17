class CreateDirectTreasures < ActiveRecord::Migration[6.0]
  def change
    create_table :direct_treasures do |t|
      t.string :index
      t.string :name
      t.date :due_date
      t.float :tax
      t.float :value

      t.timestamps
    end
  end
end
