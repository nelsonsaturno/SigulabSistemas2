class Equipment < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates :serial,  :presence => {:message => "no puede ser blanco"}
	validates_uniqueness_of :national_good, :allow_blank => true, :allow_nil => true
# 	validates :national_good, :presence => {:message => "no puede ser blanco"}, :uniqueness => {:message => "ya existe otro equipo con el mismo numero de bien nacional"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	
	def self.search(query)
		where("name like ?", "%#{query}%") 
	end
	
	before_save :uppercase_fields
	before_update :uppercase_fields

	def uppercase_fields
		self.name.mb_chars.upcase!
		self.brand.mb_chars.upcase!
		self.model.mb_chars.upcase!
		self.serial.mb_chars.upcase!
		
		self.responsible.mb_chars.upcase!
		self.location.mb_chars.upcase!
		self.meassure.mb_chars.upcase!
		self.bill.mb_chars.upcase!
		self.buy_order.mb_chars.upcase!
	end
end
