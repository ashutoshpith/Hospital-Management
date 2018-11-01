class Inpatient < ApplicationRecord
    belongs_to :roomtable
    belongs_to :labtable
    
end
