class AddDetailsToRoomtable < ActiveRecord::Migration[5.2]
  def change
    add_reference :roomtables, :inpatient, foreign_key: true
  end
end
