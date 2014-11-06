class Income < ActiveRecord::Base
  enum origin: [:ordinary, :extraordinary, :projects, :reformulation]
  belongs_to :lab

  validates :amount, :precense => true,
					 :numericality => true,
					 :greater_than => 0

  validates :organism, :precense => true,
					   :length {:maximum => 512}

  validates :lab_id, :presence => true,
					 :numericality => true,
					 :greater_than => 0,
					 :less_than => 9

  validates :description :presence => true,
						 :length => {:maximum => 512}

  validates :financing :presence => true,
					   :length => {:maxumum => 512} #!No se sabe si es obligatorio

  validates :document :presence => true,
					  :length => {:maxumum => 512} #!No se sabe si es obligatorio

  validates :date :format => /(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/

end
