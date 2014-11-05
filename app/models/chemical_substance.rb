class ChemicalSubstance < ActiveRecord::Base
	validates :name, presence: true
	validates :location, presence: true
	validates :cas, presence: true, uniqueness: true
	validates :responsible, presence: true
end
