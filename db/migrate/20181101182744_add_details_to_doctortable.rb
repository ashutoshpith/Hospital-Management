class AddDetailsToDoctortable < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctortables, :outpatient, foreign_key: true
  end
end
