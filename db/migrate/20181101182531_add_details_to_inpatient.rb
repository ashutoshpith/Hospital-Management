class AddDetailsToInpatient < ActiveRecord::Migration[5.2]
  def change
    add_reference :inpatients, :labtable, foreign_key: true
    add_reference :inpatients, :roomtable, foreign_key: true
  end
end
