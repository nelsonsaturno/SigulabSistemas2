class Execution < ActiveRecord::Base
  belongs_to :commitment
  has_one :check
  
  validates :sae_code, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :date, presence: true
  validates_datetime :date
end
