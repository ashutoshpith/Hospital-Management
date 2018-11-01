class AddDetailsToBill < ActiveRecord::Migration[5.2]
  def change
    add_reference :bills, :outpatient, foreign_key: true
  end
end
