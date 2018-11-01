class Labtable < ApplicationRecord
    has_many :outpatients
    has_many :inpatients
    belongs_to :doctortable
    
end
