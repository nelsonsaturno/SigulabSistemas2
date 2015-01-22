class AddNumsolicitudToChemicalSubstances < ActiveRecord::Migration
  def change
  	add_column :chemical_substances, :numSolicitud, :integer
  end
end
