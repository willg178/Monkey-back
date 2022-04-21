class AddSizeToMonkeys < ActiveRecord::Migration[7.0]
  def change
    add_column :monkeys, :size, :string
  end
end
