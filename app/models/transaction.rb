class Transaction < ActiveRecord::Base
  belongs_to :lab
  
  scope :income, lambda { where("income IS NOT NULL") }
  scope :outcome, lambda { where("outcome IS NOT NULL") }
end