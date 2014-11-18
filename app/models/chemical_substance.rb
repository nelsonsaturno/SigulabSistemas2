class ChemicalSubstance < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :cas, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	validates :quantity, :presence => {:message => "no puede ser blanco"}
	before_save :uppercase_fields
	before_update :uppercase_fields
	
	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
	

	def uppercase_fields
		self.name.mb_chars.upcase!
		self.matter_states.mb_chars.upcase!
		self.cas.mb_chars.upcase!
		self.status.mb_chars.upcase!
		self.responsible.mb_chars.upcase!
		self.location.mb_chars.upcase!
		self.meassure.mb_chars.upcase!
		self.bill.mb_chars.upcase!
		self.buy_order.mb_chars.upcase!
	end

end

# # # # # 
# # # # # def self.search2(query,column)
# # # # #   where("? like ?","%#{column}%", "%#{query}%") 
# # # # # end

