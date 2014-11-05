class Commitment < ActiveRecord::Base
  #Required on integration #!
  #belongs_to :commitable, polymorphic: true
  
  has_many :executions
  belongs_to :lab
end
