class AddWeightToMonkeys < ActiveRecord::Migration[7.0]
  def change
    add_column :monkeys, :weight, :string
  end
end
