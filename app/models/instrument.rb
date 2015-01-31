require "unicode_utils"
class Instrument < ActiveRecord::Base
	validates :name, :presence => {:message => "no puede ser blanco"}
	validates_uniqueness_of :national_good, :allow_blank => true, :allow_nil => true
# 	validates :national_good, :uniqueness => {:message => "ya existe otro instrumento con el mismo numero de bien nacional"}
	validates :dependency, :presence => {:message => "no puede ser blanco"}
	validates :location, :presence => {:message => "no puede ser blanco"}
	validates :responsible, :presence => {:message => "no puede ser blanco"}
	validates :measurement_unit, :presence => {:message => "no puede ser blanco"}
	validates_presence_of :id2
	validates_uniqueness_of :id2
	before_save :uppercase_fields
	before_update :uppercase_fields
	
	def self.search(query)
		query=UnicodeUtils.upcase(query, :es)
		where("name like ?", "%#{query}%") 
	end
	
	private
	def uppercase_fields
		self.name=UnicodeUtils.upcase(self.name, :es)
		self.brand=UnicodeUtils.upcase(self.brand, :es)
		self.measurement_unit=UnicodeUtils.upcase(self.measurement_unit, :es)
		self.material=UnicodeUtils.upcase(self.material, :es)
		self.status=UnicodeUtils.upcase(self.status, :es)
		self.location=UnicodeUtils.upcase(self.location, :es)
		self.responsible=UnicodeUtils.upcase(self.responsible, :es)
		self.bill=UnicodeUtils.upcase(self.bill, :es)
		self.buy_order=UnicodeUtils.upcase(self.buy_order, :es)
		self.dependency=UnicodeUtils.upcase(self.dependency, :es)
	end
end
