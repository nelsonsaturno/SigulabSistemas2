class ChemicalSubstance < ActiveRecord::Base
# 	CASSSS CREO QUE NO ES UNICO
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :cas, :presence => {:message => "no puede ser blanco"}, uniqueness: true
	validates :responsible, :presence => {:message => "no puede ser blanco"}
end
