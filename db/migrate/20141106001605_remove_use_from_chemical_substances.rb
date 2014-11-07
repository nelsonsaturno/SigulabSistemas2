class RemoveUseFromChemicalSubstances < ActiveRecord::Migration
  def change
    remove_column :chemical_substances, :use, :string
  end
end
