class Commitment < ActiveRecord::Base
  #Required on integration #!
  #belongs_to :commitable, polymorphic: true
  
  has_many :executions
  belongs_to :lab

  validates :amount, :precense => true,
					 :numericality => true,
					 :greater_than => 0

  validates :code,	:precense => true

  validates :lab_id, :presence => true,
					 :numericality => true,
					 :greater_than => 0,
					 :less_than => 9

   validates :description :presence => true,
						 :length => {:maximum => 512}

  validates :recipient :presence => true,
					   :length => {:maxumum => 512} #!No se sabe si es obligatorio

end
