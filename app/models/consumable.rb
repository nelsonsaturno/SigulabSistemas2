class Consumable < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	
	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
	
	before_save :uppercase_fields
	before_update :uppercase_fields

	def uppercase_fields
		self.name.mb_chars.upcase!
		self.material.mb_chars.upcase!
		self.quantity.mb_chars.upcase!
		self.location.mb_chars.upcase!
		self.responsible.mb_chars.upcase!
		self.bill.mb_chars.upcase!
		self.buy_order.mb_chars.upcase!
	end

end
