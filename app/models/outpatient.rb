class Outpatient < ApplicationRecord
    has_many :bills
    has_many :outpatients
    belongs_to :labtable
    
end
