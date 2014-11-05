class Income < ActiveRecord::Base
  enum origin: [:ordinary, :extraordinary, :projects, :reformulation]
  belongs_to :lab
end
