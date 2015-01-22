class AddFechaTopeToLoans < ActiveRecord::Migration
  def change
  	add_column :loans, :fechaTope, :date
  	add_column :loans, :condiciones, :string
  	add_column :loans, :unidadMedida, :string
  end
end
