class Equipment < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :serial,  :presence => {:message => "no puede ser blanco"}
	validates :national_good, :presence => {:message => "no puede ser blanco"}, :uniqueness => {:message => "ya existe otro equipo con el mismo numero de bien nacional"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	serialize :use, JSON
	
	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
end
