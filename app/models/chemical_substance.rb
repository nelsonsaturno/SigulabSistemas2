class ChemicalSubstance < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :cas, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	
	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
end

# # # # # 
# # # # # def self.search2(column,query)
# # # # #   where("? like ?","%#{column}%", "%#{query}%") 
# # # # # end

