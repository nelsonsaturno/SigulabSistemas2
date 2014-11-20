require "unicode_utils"
class Instrument < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates_uniqueness_of :national_good, :allow_blank => true, :allow_nil => true
# 	validates :national_good, :uniqueness => {:message => "ya existe otro instrumento con el mismo numero de bien nacional"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	validates :measurement_unit, :presence => {:message => "no puede ser blanco"}
	
	def self.search(query)
		query=UnicodeUtils.upcase(query, :es)
		where("name like ?", "%#{query}%") 
	end
end
