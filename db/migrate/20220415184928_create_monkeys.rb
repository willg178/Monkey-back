class CreateMonkeys < ActiveRecord::Migration[7.0]
  def change
    create_table :monkeys do |t|
      t.string :name
      t.string :location
      t.string :population
      t.string :description
      t.string :facts

      t.timestamps
    end
  end
end
