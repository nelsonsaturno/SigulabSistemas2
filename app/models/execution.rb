#!/bin/env ruby
# encoding: utf-8

class Execution < ActiveRecord::Base
  enum document: [:reception_report, :according_service]
  def self.document_str
  [
    "Informe de Recepción",
    "Conformidad de Servicio"
  ]
  end

  belongs_to :commitment
  
  validates :commitment, presence: true
  validates :check_amount, presence: true, numericality: { greater_than: 0 }
end
