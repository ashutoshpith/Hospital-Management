class CreateLabtables < ActiveRecord::Migration[5.2]
  def change
    create_table :labtables do |t|
      t.string :pid
      t.date :dt
      t.string :category
      t.integer :amount

      t.timestamps
    end
  end
end
