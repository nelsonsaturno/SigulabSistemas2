class Instrument < ActiveRecord::Base
	validates :name, presence: true
	validates :national_good, uniqueness: true
	validates :location, presence: true
	validates :responsible, presence: true
end
