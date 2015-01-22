class Loan < ActiveRecord::Base
	has_many :chemical_substances
	has_many :equipments
	has_many :consumables
	has_many :instruments
end
