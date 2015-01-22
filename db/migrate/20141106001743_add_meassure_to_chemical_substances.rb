class AddMeassureToChemicalSubstances < ActiveRecord::Migration
  def change
    add_column :chemical_substances, :meassure, :string
  end
end
