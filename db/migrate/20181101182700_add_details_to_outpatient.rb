class AddDetailsToOutpatient < ActiveRecord::Migration[5.2]
  def change
    add_reference :outpatients, :labtable, foreign_key: true
  end
end
