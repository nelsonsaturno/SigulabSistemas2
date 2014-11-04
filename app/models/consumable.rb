class Consumable < ActiveRecord::Base
	validates :name, presence: true
	validates :location, presence: true
	validates :responsible, presence: true
end
