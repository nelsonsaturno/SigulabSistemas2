class Equipment < ActiveRecord::Base
	validates :name, presence: true
	validates :serial, presence: true
	validates :national_good, presence: true, uniqueness: true
	validates :location, presence: true
	validates :responsible, presence: true
	serialize :use, JSON
end
