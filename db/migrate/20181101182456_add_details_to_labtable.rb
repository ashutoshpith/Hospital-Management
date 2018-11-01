class AddDetailsToLabtable < ActiveRecord::Migration[5.2]
  def change
    add_reference :labtables, :doctortable, foreign_key: true
  end
end
