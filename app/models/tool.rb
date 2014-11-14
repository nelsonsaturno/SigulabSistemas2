class Tool < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :national_good, :uniqueness => {:message => "ya existe otra herramienta con el mismo numero de bien nacional"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	
	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
end
