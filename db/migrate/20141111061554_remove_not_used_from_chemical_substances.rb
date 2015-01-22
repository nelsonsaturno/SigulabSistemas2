class RemoveNotUsedFromChemicalSubstances < ActiveRecord::Migration
  def change
    remove_column :chemical_substances, :legal_regime, :string
    remove_column :chemical_substances, :dangerous, :string
  end
end
