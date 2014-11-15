class ChemicalSubstance < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :cas, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	validates :quantity, :presence => {:message => "no puede ser blanco"}
	
	before_save :uppercase_fields

	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
	
# # # # 	def before_save
# # # # 		uppercase_fields
# # # # 	end
# # # # 	
  def uppercase_fields
    self.name.upcase!
    self.matter_states.upcase!
    self.cas.upcase!
    self.status.upcase!
    self.responsible.upcase!
    self.location.upcase!
    self.meassure.upcase!
    self.bill.upcase!
    self.buy_order.upcase!
  end

end

# # # # # 
# # # # # def self.search2(query,column)
# # # # #   where("? like ?","%#{column}%", "%#{query}%") 
# # # # # end

