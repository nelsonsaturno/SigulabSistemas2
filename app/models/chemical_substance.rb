require "unicode_utils"
class ChemicalSubstance < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :cas, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	validates :quantity, :presence => {:message => "no puede ser blanco"}
	before_validation :uppercase_fields
	before_update :uppercase_fields
	
	def self.search(query)
		query=UnicodeUtils.upcase(query, :es)
		where("name like ?", "%#{query}%") 
	end
	
	private
		def uppercase_fields
			self.name=UnicodeUtils.upcase(self.name, :es)
			self.matter_states=UnicodeUtils.upcase(self.matter_states, :es)
			self.cas=UnicodeUtils.upcase(self.cas, :es)
			self.status=UnicodeUtils.upcase(self.status, :es)
			self.responsible=UnicodeUtils.upcase(self.responsible, :es)
			self.location=UnicodeUtils.upcase(self.location, :es)
			self.meassure=UnicodeUtils.upcase(self.meassure, :es)
			self.bill=UnicodeUtils.upcase(self.bill, :es)
			self.buy_order=UnicodeUtils.upcase(self.buy_order, :es)
		end

end

# # # # # 
# # # # # def self.search2(query,column)
# # # # #   where("? like ?","%#{column}%", "%#{query}%") 
# # # # # end

