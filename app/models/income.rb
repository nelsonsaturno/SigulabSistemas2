#!/bin/env ruby
# encoding: utf-8

class Income < ActiveRecord::Base
  enum origin: [:ordinary, :extraordinary, :reformulation]
  def self.origin_str
  [
    'Presupuesto Ordinario',
    'Presupuesto Extraordinario',
    'Reformulación'
  ]
  end
  
  belongs_to :lab
  
  validates :lab, presence: true
  validates :sae_code, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: {maximum: 512}
  validates :origin, presence: true
  validates :date, presence: true
  validates_datetime :date
  
  validates :organism, length: {maximum: 512}
  validates :financing, length: {maximum: 512} #!No se sabe si es obligatorio
  validates :document, length: {maximum: 512} #!No se sabe si es obligatorio
  
end
