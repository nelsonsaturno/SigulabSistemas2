class Equipment < ActiveRecord::Base
	validates :name, presence: true, :presence => {:message => "no puede ser blanco"}
	validates :serial, presence: true, :presence => {:message => "no puede ser blanco"}
	validates :national_good, :presence => {:message => "no puede ser blanco"}, uniqueness: true
	validates :location, presence: true
	validates :responsible, presence: true
	serialize :use, JSON
end
